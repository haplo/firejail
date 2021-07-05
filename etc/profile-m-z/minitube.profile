# Firejail profile for minitube
# Description: Native Youtube viewer for Linux
# This file is overwritten after every install/update
# Persistent local customizations
include minitube.local
# Persistent global definitions
include globals.local

nodeny  ${PICTURES}
nodeny  ${HOME}/.cache/Flavio Tordini
nodeny  ${HOME}/.config/Flavio Tordini
nodeny  ${HOME}/.local/share/Flavio Tordini

include allow-lua.inc

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-shell.inc
include disable-xdg.inc

mkdir ${HOME}/.cache/Flavio Tordini
mkdir ${HOME}/.config/Flavio Tordini
mkdir ${HOME}/.local/share/Flavio Tordini
allow  ${PICTURES}
allow  ${HOME}/.cache/Flavio Tordini
allow  ${HOME}/.config/Flavio Tordini
allow  ${HOME}/.local/share/Flavio Tordini
allow  /usr/share/minitube
include whitelist-common.inc
include whitelist-runuser-common.inc
include whitelist-usr-share-common.inc
include whitelist-var-common.inc

apparmor
caps.drop all
netfilter
nodvd
nogroups
noinput
nonewprivs
noroot
notv
nou2f
novideo
protocol unix,inet,inet6,netlink
seccomp !kcmp
shell none
tracelog

disable-mnt
private-bin minitube
private-cache
private-dev
private-etc alsa,alternatives,asound.conf,ca-certificates,crypto-policies,drirc,fonts,gtk-2.0,gtk-3.0,host.conf,hostname,hosts,ld.so.cache,ld.so.conf,ld.so.conf.d,ld.so.preload,mime.types,nsswitch.conf,pki,pulse,resolv.conf,selinux,ssl,X11,xdg
private-tmp

dbus-user none
dbus-system none
