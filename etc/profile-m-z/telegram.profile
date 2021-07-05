# Firejail profile for telegram
# This file is overwritten after every install/update
# Persistent local customizations
include telegram.local
# Persistent global definitions
include globals.local

nodeny  ${HOME}/.TelegramDesktop
nodeny  ${HOME}/.local/share/TelegramDesktop

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-shell.inc
include disable-xdg.inc

mkdir ${HOME}/.TelegramDesktop
mkdir ${HOME}/.local/share/TelegramDesktop
allow  ${HOME}/.TelegramDesktop
allow  ${HOME}/.local/share/TelegramDesktop
allow  ${DOWNLOADS}
include whitelist-common.inc
include whitelist-runuser-common.inc
include whitelist-usr-share-common.inc
include whitelist-var-common.inc

apparmor
caps.drop all
netfilter
nodvd
noinput
nonewprivs
noroot
notv
protocol unix,inet,inet6,netlink
seccomp
seccomp.block-secondary
shell none

disable-mnt
#private-bin telegram,Telegram,telegram-desktop
private-cache
private-dev
private-etc alsa,alternatives,ca-certificates,crypto-policies,fonts,group,ld.so.cache,localtime,machine-id,os-release,passwd,pki,pulse,resolv.conf,ssl,xdg
private-tmp

dbus-user filter
dbus-user.talk org.freedesktop.Notifications
dbus-user.talk org.kde.StatusNotifierWatcher
dbus-user.talk org.gnome.Mutter.IdleMonitor
dbus-user.talk org.freedesktop.ScreenSaver
dbus-system none
