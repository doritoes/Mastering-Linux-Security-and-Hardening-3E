# Chapter 3

## Hands-on lab for creating an encrypted home directroy with adduser pp. 61-62
1. Step 3 The command `ecryptfs-unwrap-passphrase` prompts for a passphrase
    - The passphrase is the same as the user's password, which you entered in step 2
2. The encyrpted home directory does not seem to work. Creating a file in the users's home directory is still viewable by a sudo user
    - `ecryptfs-mount-private`
    - `ecryptfs-umount-private`
    - For informaton on automounting at login, check [this link about Gentoo Linux](https://wiki.gentoo.org/wiki/Encrypt_a_home_directory_with_ECryptfs)
    - Until you mount the private home directory, it will be unencrypted
    - You don't need unmount the home directory for the data to be protected from root
    - You need to leave the home directory in order to umount it

## Hands-on lab for setting password complexity criteria pp. 66-66
1. The lab does not work correctly because Ubuuntu 22.04 defaults all the credit values to zero
    - `sudo vi /etc/security/pwquality.conf`
    - enable and modify minlen to 19 as stated
    - additionally enable and modify the following
        - `dcredit = 1`
        - `ucredit = 1`
        - `lcredit = 1`
        - `ocredit = 1`

## Hands-on lab for configuring pam_tally2 on CentOS 7 pp. 674-75
1. Step 3 had the incorrect filename `/etc/pam.d/system.auth`
    - the correct filename is `/etc/pam.d/system.-auth`
