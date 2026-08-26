# Knowledge base

## Git

Set git credentials

    git config --local user.email '...'
    git config --local user.name '...'


## System

Reformat NVMe to different sector size, look for *LBA Format* at the end, use index for the *--lbaf* parameter:

    nvme ns-id -H /dev/nvme0n1
    nvme format --lbaf=0 /dev/nvme0n1
    nvme list

Append partition of a given size to device, create GPT type if needed, default partition type is Linux (0x83):

    sfdisk --dump /dev/sdx > sdx.backup
    echo ',+10G,' | sfdisk --label gpt --append /dev/sdx

## AI
