# Firejail profile for wine
# Description: A compatibility layer for running Windows programs
# This file is overwritten after every install/update
# Persistent local customizations
include wine.local
# Persistent global definitions
include globals.local

nodeny  ${HOME}/.cache/winetricks
nodeny  ${HOME}/.Steam
nodeny  ${HOME}/.local/share/Steam
nodeny  ${HOME}/.local/share/steam
nodeny  ${HOME}/.steam
nodeny  ${HOME}/.wine
nodeny  /tmp/.wine-*

include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

# whitelist /usr/share/wine
# include whitelist-usr-share-common.inc
include whitelist-var-common.inc

# Some applications don't need allow-debuggers. Add 'ignore allow-debuggers' to your wine.local if you want to override this.
allow-debuggers
caps.drop all
# net none
netfilter
nodvd
nogroups
noinput
nonewprivs
noroot
# nosound
notv
# novideo
seccomp

private-dev
