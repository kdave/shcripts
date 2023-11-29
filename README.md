# Shell scripts

Random collection of scripts and snippets.


## btrfs
[**bsdel**](bsdel):
Delete given btrfs subvolumes (as root).
\
[**bstime**](bstime):
Create btrfs snapshot with a timestamp in name.
\
[**gen-dump-image**](gen-dump-image):
Template to generate textual dump of image of filesystem.

## build
[**jj**](jj):
Shortcut for unlimited make with icecream.
\
[**jjc**](jjc):
Shortcut for unlimited make with ccache and icecream.
\
[**makev**](makev):
Run the given make command but open the results in vim
(same as saving make output and running vi -q output).

## ccache
[**cc**](cc):
\
[**cc++**](cc++):
\
[**g++**](g++):
\
[**gcc**](gcc):

## crypt
[**device-create-cmd**](device-create-cmd):
Set up a block device with dm-crypt (aes-xts-plain64/sha512)

## data
[**histogram**](histogram):
Print histogram from data set (numbers).
\
[**lines-between**](lines-between):
Print lines between two markers, start included, end excluded.

## fstests
[**fstests-log**](fstests-log):
Quick scan of dmesg or given log file for fstests and warning/bug messages.

## gcc
[**inst-gcc-links**](inst-gcc-links):
Create symlinks for a given gcc & related tools version

## git
[**bgrep**](bgrep):
Grep in local git branches.
\
[**brandom**](brandom):
Show first 4 random local branches
\
[**bsel**](bsel):
Visual git branch selector (bgrep, dialog), then print the branch name.
\
[**bsel-co**](bsel-co):
Visual git branch selector (bgrep, dialog), then check out the branch.
\
[**bsel-tig**](bsel-tig):
Visual git branch selector (bgrep, dialog), then run it in tig.
\
[**gd**](gd):
Git diff shortcut.
\
[**ge**](ge):
Edit changelog of HEAD.
\
[**gid**](gid):
Git diff shortcut.
\
[**gis**](gis):
Git show shortcut.
\
[**git-br**](git-br):
Print current branch name.
\
[**git-fixesline**](git-fixesline):
Print line from given commit for the Fixes: tag.
\
[**git-refresh-commit**](git-refresh-commit):
Apply any uncommitted changes to HEAD.
\
[**git-reword**](git-reword):
Edit a commit message of a given commit (rebase and --amend).
\
[**git-stableline**](git-stableline):
Format line for stable patch dependencies (see
Documentation/process/stable-kernel-rules.rst)
\
[**mt**](mt):
Run the preferred git conflict resolution tool (vimdiff).

## kernel
[**add-rev**](add-rev):
Add reviewed-by tag from known people to the right location to the top commit.
\
[**add-rev-to**](add-rev-to):
Edit given commit, run 'add-rev name' and edit to fixup things
then go back.

## log
[**gluelog.pl**](gluelog.pl):
Glue together lines from dmesg that got wrapped due to text width.
\
[**lastlog.pl**](lastlog.pl):
Chop the messages since last boot from a continuous serial console log,
identified by the timestamp change.
\
[**lsslab**](lsslab):
Print slab info with aligned columns, also can filter by slab name.
\
[**revfile.pl**](revfile.pl):
Reverse input, line by line and on each line (rev + tac).
\
[**tscat**](tscat):
'timestamped cat', prepend a timestamp to each line.

## misc
[**drop-caches**](drop-caches):
Drop caches.
\
[**pchown**](pchown):
Preserve permissions on chown on a file.
\
[**set-kbdrate**](set-kbdrate):
In X, set delay and repeat rate for maximum productivity.
\
[**setperm**](setperm):
Fix write permission on all files and directories.
\
[**setro**](setro):
Set "mostly read-only" mask on all files and directories.
\
[**sleepy**](sleepy):
Interactive sleep:
\
[**slowcat**](slowcat):
Print input lines with a small delay (0.1s).
\
[**tdelta**](tdelta):
Time delta between two timestamps.
\
[**waitpid**](waitpid):
Wait until a given pid exits (poll).

## net
[**waitping**](waitping):
Wait until the given host responds to pings.
\
[**waitssh**](waitssh):
Wait until the given host is up and ready for ssh.
\
[**wgetcz**](wgetcz):
Set preferred language to CZ and run wget.

## osc
[**osc-request-ack**](osc-request-ack):
Accept given SR

## packaging
[**kernpurge**](kernpurge):
Print kdialog with list of installed kernel packages and allow selection to
remove them, current kernel is not in the list
\
[**update-python**](update-python):
Convenient way to update python packages that exist on lower version,
and install them on current one (3.11)

## pkg
[**zypper-add-testing-repo**](zypper-add-testing-repo):
Add my testing repo and kernel.
\
[**zypper-install-packages**](zypper-install-packages):
Install a few testing packages.

## tig
[**tigh**](tigh):
Open arg in tig.
\
[**tigs**](tigs):
Shortcut for tig status.

## tmux
[**foursquares**](foursquares):
Create layout with four 50% squares.
\
[**newp**](newp):
Split panel, 2 lines at the bottom just to see the command but not the output,
exit afterwards
\
[**owntmux**](owntmux):
Capture the named session.

## vim
[**vicg**](vicg):
Open vim with coccigrep search, save temporary output for repeated calls
NOTE: upstream coccigrep stopped working for some reason, this is a simpler
version that does not find all occurences.
\
[**vigrep**](vigrep):
vim grep all *.[ch] files in current directory and open (:cNext/:cnext).
\
[**vigrub**](vigrub):
Edit grub1 config as root.
\
[**vihead**](vihead):
In a git tree, list files from the last commit (HEAD), offer a selection and
open in vim with the diff against HEAD^ (i.e. the last changes to the file).
\
[**vihead-all**](vihead-all):
Like vihead, but go through all files.
\
[**vii**](vii):
Translate "file:line:col" format to "vim +line file", to open files from e.g.
make output.
\
[**vimsyn**](vimsyn):
Generate syntax hilighted .xhtml of the given file.

## x
[**xclip-clear**](xclip-clear):
Clear all X clipboards
