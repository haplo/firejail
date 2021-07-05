# Firejail profile for abiword
# Description: flexible cross-platform word processor
# This file is overwritten after every install/update
# Persistent local customizations
include abiword.local
# Persistent global definitions
include globals.local

nodeny  ${HOME}/.config/abiword

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-shell.inc

allow  /usr/share/abiword-3.0
include whitelist-usr-share-common.inc
include whitelist-runuser-common.inc
include whitelist-var-common.inc

apparmor
caps.drop all
machine-id
net none
no3d
nodvd
nogroups
noinput
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix
seccomp
shell none
tracelog

private-bin abiword
private-cache
private-dev
private-etc fonts,gtk-3.0,passwd
private-tmp

# dbus-user none
# dbus-system none
