# Shell scripts

Random collection of scripts and snippets.


## asm
[**disas**](asm/disas):
Prettyfier of objdump assembly (AT&T, nice line graphics)

## btrfs
[**bg2str.py**](btrfs/bg2str.py):
Parse hexadecimal value of a btrfs block group type/flags and print the
textual information; no validation, just the bits.
\
[**bsdel**](btrfs/bsdel):
Delete given btrfs subvolumes (as root).
\
[**bstime**](btrfs/bstime):
Create btrfs snapshot with a timestamp in name.
\
[**gen-dump-image**](btrfs/gen-dump-image):
Template to generate textual dump of image of filesystem.

## build
[**jj**](build/jj):
Shortcut for unlimited make with icecream.
\
[**jjc**](build/jjc):
Shortcut for unlimited make with ccache and icecream.
\
[**makec**](build/makec):
Make with ccache
\
[**makej**](build/makej):
Make with icecream
\
[**makejc**](build/makejc):
Make with ccache + icecream
\
[**makev**](build/makev):
Run the given make command but open the results in vim
(same as saving make output and running vi -q output).

## crypt
[**device-create-cmd**](crypt/device-create-cmd):
Set up a block device with dm-crypt (aes-xts-plain64/sha512)

## data
[**histogram**](data/histogram):
Print histogram from data set (numbers).
\
[**lines-between**](data/lines-between):
Print lines between two markers, start included, end excluded.
\
[**sort-by-length**](data/sort-by-length):
Sort stdin lines by length

## dosbox
[**rundos**](dosbox/rundos):
Run DOS executable in current directory, fullscreen

## fstests
[**fstests-log**](fstests/fstests-log):
Quick scan of dmesg or given log file for fstests and warning/bug messages.

## gcc
[**inst-gcc-links**](gcc/inst-gcc-links):
Create symlinks for a given gcc & related tools version

## git
[**bgrep**](git/bgrep):
Grep in local git branches.
\
[**brandom**](git/brandom):
Show first 4 random local branches
\
[**bsel**](git/bsel):
Visual git branch selector (bgrep, dialog), then print the branch name.
\
[**bsel-co**](git/bsel-co):
Visual git branch selector (bgrep, dialog), then check out the branch.
\
[**bsel-tig**](git/bsel-tig):
Visual git branch selector (bgrep, dialog), then run it in tig.
\
[**gd**](git/gd):
Git diff shortcut.
\
[**ge**](git/ge):
Edit changelog of HEAD.
\
[**gid**](git/gid):
Git diff shortcut.
\
[**gis**](git/gis):
Git show shortcut.
\
[**git-auto-rebase**](git/git-auto-rebase):
Auto rebase topic branch on another one, look up a specific commit with marker
\
[**git-br**](git/git-br):
Print current branch name.
\
[**git-fixesline**](git/git-fixesline):
Print line from given commit for the Fixes: tag.
\
[**git-refresh-commit**](git/git-refresh-commit):
Apply any uncommitted changes to HEAD.
\
[**git-reword**](git/git-reword):
Edit a commit message of a given commit (rebase and --amend).
\
[**git-stableline**](git/git-stableline):
Format line for stable patch dependencies (see
Documentation/process/stable-kernel-rules.rst)
\
[**mt**](git/mt):
Run the preferred git conflict resolution tool (vimdiff).

## kernel
[**add-rev**](kernel/add-rev):
Add reviewed-by tag from known people to the right location to the top commit.
\
[**add-rev-to**](kernel/add-rev-to):
Edit given commit, run 'add-rev name' and edit to fixup things
then go back.

## log
[**dstat**](log/dstat):
Dstat output compatibility for dool
\
[**gluelog.pl**](log/gluelog.pl):
Glue together lines from dmesg that got wrapped due to text width.
\
[**lastlog.pl**](log/lastlog.pl):
Chop the messages since last boot from a continuous serial console log,
identified by the timestamp change.
\
[**lsslab**](log/lsslab):
Print slab info with aligned columns, also can filter by slab name.
\
[**revfile.pl**](log/revfile.pl):
Reverse input, line by line and on each line (rev + tac).
\
[**tscat**](log/tscat):
'timestamped cat', prepend a timestamp to each line.

## misc
[**drop-caches**](misc/drop-caches):
Drop caches.
\
[**every**](misc/every):
Run the given command every time-spec, command error will not stop the loop, will use 'sleepy' if available
\
[**fastrand**](misc/fastrand):
Generate a lot of pseudo-random data faster than /dev/random or /dev/urandom (openssl)
\
[**findi**](misc/findi):
Find files with grep (case insensitive)
\
[**nytimebig**](misc/nytimebig):
Date, time, big letters (figlet)
\
[**nytimer**](misc/nytimer):
Date, time
\
[**pchown**](misc/pchown):
Preserve permissions on chown on a file.
\
[**sdblk**](misc/sdblk):
Show only *sdx* devices, no NVMe and such
\
[**set-kbdrate**](misc/set-kbdrate):
In X, set delay and repeat rate for maximum productivity (delay 170, repeat 70)
\
[**setperm**](misc/setperm):
Fix write permission on all files and directories.
\
[**setro**](misc/setro):
Set "mostly read-only" mask on all files and directories.
\
[**sleepy**](misc/sleepy):
Interactive sleep:
\
[**slowcat**](misc/slowcat):
Print input lines with a small delay (0.1s).
\
[**tdelta**](misc/tdelta):
Time delta between two timestamps.
\
[**waitpid**](misc/waitpid):
Wait until a given pid exits (poll).
\
[**watch-hdd**](misc/watch-hdd):
Watch HDD temperatures

## net
[**waitping**](net/waitping):
Wait until the given host responds to pings.
\
[**waitssh**](net/waitssh):
Wait until the given host is up and ready for ssh.
\
[**wgetcz**](net/wgetcz):
Set preferred language to CZ and run wget.

## ollama
[**ollama-ls**](ollama/ollama-ls):
List ollama models, sort by size, grep pattern
\
[**ollama-pull-all**](ollama/ollama-pull-all):
Pull all ollama models

## osc
[**osc-request-ack**](osc/osc-request-ack):
Accept given SR

## packaging
[**kernpurge**](packaging/kernpurge):
Print kdialog with list of installed kernel packages and allow selection to
remove them, current kernel is not in the list
\
[**update-python**](packaging/update-python):
Convenient way to update python packages that exist on lower version,
and install them on current one (3.11)

## pkg
[**zypper-add-testing-repo**](pkg/zypper-add-testing-repo):
Add my testing repo and kernel.
\
[**zypper-install-packages**](pkg/zypper-install-packages):
Install a few testing packages.

## tig
[**tigh**](tig/tigh):
Open arg in tig.
\
[**tigs**](tig/tigs):
Shortcut for tig status.

## tmux
[**foursquares**](tmux/foursquares):
Create layout with four 50% squares.
\
[**newp**](tmux/newp):
Split panel, 2 lines at the bottom just to see the command but not the output,
exit afterwards
\
[**owntmux**](tmux/owntmux):
Capture the named session.

## vim
[**vicg**](vim/vicg):
Open vim with coccigrep search, save temporary output for repeated calls
NOTE: upstream coccigrep stopped working for some reason, this is a simpler
version that does not find all occurrences.
\
[**vicint**](vim/vicint):
Interactive C in vim (edit, compile, run)
\
[**vigrep**](vim/vigrep):
vim grep all \*.[ch] files in current directory and open (:cNext/:cnext).
\
[**vigrub**](vim/vigrub):
Edit grub1 config as root.
\
[**vihead**](vim/vihead):
In a git tree, list files from the last commit (HEAD), offer a selection and
open in vim with the diff against HEAD^ (i.e. the last changes to the file).
\
[**vihead-all**](vim/vihead-all):
Like vihead, but go through all files.
\
[**vii**](vim/vii):
Translate "file:line:col" format to "vim +line file", to open files from e.g.
make output.
\
[**vimsyn**](vim/vimsyn):
Generate syntax highlighted .xhtml of the given file.

## x
[**xclip-clear**](x/xclip-clear):
Clear all X clipboards
\
[**xclip-what**](x/xclip-what):
Show what's in X clipboards
