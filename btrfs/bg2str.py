#!/usr/bin/python3
## Parse hexadecimal value of a btrfs block group type/flags and print the
## textual information; no validation, just the bits.

import sys

BTRFS_BLOCK_GROUP_DATA        = (1 << 0)
BTRFS_BLOCK_GROUP_SYSTEM      = (1 << 1)
BTRFS_BLOCK_GROUP_METADATA    = (1 << 2)

BTRFS_BLOCK_GROUP_RAID0       = (1 << 3)
BTRFS_BLOCK_GROUP_RAID1       = (1 << 4)
BTRFS_BLOCK_GROUP_DUP         = (1 << 5)
BTRFS_BLOCK_GROUP_RAID10      = (1 << 6)
BTRFS_BLOCK_GROUP_RAID5       = (1 << 7)
BTRFS_BLOCK_GROUP_RAID6       = (1 << 8)
BTRFS_BLOCK_GROUP_RAID1c3     = (1 << 9)
BTRFS_BLOCK_GROUP_RAID1c4     = (1 << 10)

bgtype = {
    BTRFS_BLOCK_GROUP_DATA: "data",
    BTRFS_BLOCK_GROUP_SYSTEM: "system",
    BTRFS_BLOCK_GROUP_METADATA: "metadata",
}
bgprofile = {
    BTRFS_BLOCK_GROUP_RAID0: "raid0",
    BTRFS_BLOCK_GROUP_RAID1: "raid1",
    BTRFS_BLOCK_GROUP_DUP: "dup",
    BTRFS_BLOCK_GROUP_RAID10: "raid10",
    BTRFS_BLOCK_GROUP_RAID5: "raid5",
    BTRFS_BLOCK_GROUP_RAID6: "raid6",
    BTRFS_BLOCK_GROUP_RAID1c3: "raid1c3",
    BTRFS_BLOCK_GROUP_RAID1c4: "raid1c4"
}

print("Gimme: ")
bg = sys.stdin.readline()
base=10
if bg.startswith("0x"): base=16
elif bg.startswith("0"): base=8
intbg=int(bg, base)
print("int=%d" % intbg)

for k in bgtype.keys():
    if k & intbg:
        print('type: ' + bgtype[k])

for k in bgprofile.keys():
    if k & intbg:
        print('profile: ' + bgprofile[k])
