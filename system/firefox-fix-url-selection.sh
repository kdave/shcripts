#!/bin/sh -e

# Fix selection in url bar, broken in firefox since 75 (Mar 2020)
# (edit omni.ja)

# Attempts to vote in https://bugzilla.mozilla.org/show_bug.cgi?id=1621570
# are appreciated (but most likely futile)

# Based on:
# Script repo: https://github.com/SebastianSimon/firefox-selection-fix
# See https://superuser.com/a/1559926/751213 for detailed explanation.

firefoxdir=${1:-/usr/lib64/firefox}

if ! [ -f "$firefoxdir/browser/omni.ja" ]; then
	echo "ERROR: cannot find omni.ja in $firefoxdir"
	exit 1
fi

if [ $(id --user) -ne 0 ]; then
	echo "ERROR: must be run as root"
	exit 1
fi

omni="$firefoxdir/browser/omni.ja"

tmp=$(mktemp -d)
cd "$tmp" || { echo "ERROR: cannot cd to tmp dir $tmp"; exit 1; }
echo "INFO: firefoxdir=$firefoxdir"

cp "$omni" .
# backup anyway
backup="$omni".`date +%F_%T`
echo "INFO: backup to $backup"

cp "$omni" "$backup"

echo "INFO: fix omni.ja"
unzip -q omni.ja || { echo "ERROR: errors during unzip of omni.ja"; exit 1; }

# browser/components/urlbar/UrlbarInput.sys.mjs
#sed -in -e 's/this\._preventClickSelectsAll = this\.focused;/this._preventClickSelectsAll = true;/' modules/UrlbarInput.jsm
sed -in -e 's/this\._preventClickSelectsAll = this\.focused;/this._preventClickSelectsAll = true;/' modules/UrlbarInput.sys.mjs
# browser/components/search/content/searchbar.js
#sed -in -e 's/this\._preventClickSelectsAll = this\._textbox\.focused;/this._preventClickSelectsAll = true;/' chrome/browser/content/browser/search/searchbar.js
sed -in -e 's/this\._preventClickSelectsAll = this\._textbox\.focused;/this._preventClickSelectsAll = true;/' chrome/browser/content/browser/search/searchbar.js

zip -f omni.ja || { echo "ERROR: unable to zip changes"; exit 1; }
echo "INFO: copy result to firefox dir, restart needed, (backup: $backup)"
cp omni.ja "$omni"
touch -- "$firefoxdir/browser/.purgecaches"
echo "INFO: remove backup"
rm -- "$backup"
