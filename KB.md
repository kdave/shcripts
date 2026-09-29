WIP

# Git

Set git name:

    git config --local user.email '...'
    git config --local user.name '...'

Set credentials with PAT:

    git remote set-url gh https://USER@github.com/USER/REPO.git
    git config credential.helper 'store --file=.git/github-credentials'
    chmod 600 .git/github-credentials

# System

Reformat NVMe to different sector size, look for *LBA Format* at the end, use index for the *--lbaf* parameter:

    nvme ns-id -H /dev/nvme0n1
    nvme format --lbaf=0 /dev/nvme0n1
    nvme list

Append partition of a given size to device, create GPT type if needed, default partition type is Linux (0x83):

    sfdisk --dump /dev/sdx > sdx.backup
    echo ',+10G,' | sfdisk --label gpt --append /dev/sdx

# ...
