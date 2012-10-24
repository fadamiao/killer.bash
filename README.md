killer.bash
===========

Script to do the function of pkill in Mac OS X 10.6 and 10.7 .

## Specs
* Made in OS : Mac OS X 10.6 (a.k.a Snow Leopard)
* Tested in OS : Mac OS X 10.6, Mac OS X 10.7, Ubuntu 10.04 LTS, Ubuntu 12.04 LTS
* Language Used : Shell Script (Bash)
* Dependencies : ps, grep, awk, kill


## Motivation
The motivation it's simple, I just want kill processes by name in Mac OS X 10.6.
The 10.6 and 10.7 version doesn't come with pkill, so you need use homebrew, mac ports or others.
Then I saw a way to not need use this methods, purely in shell script.


## How To
### Run First
Please run first verify.bash to see the compatibility of your system with killer.bash.

### Using the killer.bash
Put the killer.bash on the /opt or on the folder you choose.
Edit your ~/.bash_profile or if doesn't exists just create it.

#### Editing ~/.bash_profile
Just put the bottom line in your ~/.bash_profile and killer.bash is ready for use.
```
source /opt/killer.bash
```

#### Now how to use
killer.bash it's simple to use. Just say the name of the process and be happy.
```
$ pkill TextEdit
```
