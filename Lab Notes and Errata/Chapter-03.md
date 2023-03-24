# Chapter 3

## Hands-on lab for creating an encrypted home directroy with adduser pp. 61-62
1. Step 3 The command `ecryptfs-unwrap-passphrase` prompts for a passphrase
    - The passphrase is the same as the user's password, which you entered in step 2
2. The encyrpted home directory does not seem to work. Creating a file in the users's home directory is still viewable by a sudo user
    - `ecryptfs-mount-private`
    - `ecryptfs-umount-private`
    - For informaton on automounting at login, check [this link about Gentoo Linux](https://wiki.gentoo.org/wiki/Encrypt_a_home_directory_with_ECryptfs)
