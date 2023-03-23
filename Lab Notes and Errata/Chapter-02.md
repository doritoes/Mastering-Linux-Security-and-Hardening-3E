# Chapter 2

## Adding users to a predefined admin group pp. 33-35
1. The command `sudo usermod -a -G wheel maggie` fails as the user does not exist.
    - `sudo useradd maggie`
    - However, see page 39 when user "Maggie" is added, which is different
    - Then on page 40 step 3 it's back to "maggie". You will need to set the password: `sudo passwd maggie`

## Hands-onlab for assigning limited sudo privileges pp. 39-40
1. Confusion of users maggie (added to group wheel on page 34) and Maggie (pages 39-40) causes the lab to not function as designed IF the reader users AlmaLinux9 for the steps in pp.33-35.
