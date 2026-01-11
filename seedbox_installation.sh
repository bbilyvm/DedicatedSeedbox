#!/bin/bash

## Update Installed Packages & Installing Essential Packages
function Update {
    normal_1; echo "Updating installed packages and install prerequisite"
    normal_2
    apt-get $APT_OPTIONS -qqy update && apt-get $APT_OPTIONS -qqy upgrade
    apt-get $APT_OPTIONS -qqy install sudo sysstat htop curl psmisc
    cd $HOME
    tput sgr0; clear
}

## qBittorrent
function qBittorrent {
    warn_2
    source <(wget -qO- https://raw.githubusercontent.com/bbilyvm/DedicatedSeedbox/main/Torrent%20Clients/qBittorrent/qBittorrent_install.sh)
    qBittorrent_download
    qBittorrent_install
    qBittorrent_config
    if systemctl is-active --quiet qbittorrent-nox@$username; then
        qbport=$(grep -F 'WebUI\Port' /home/$username/.config/qBittorrent/config/qBittorrent.conf | grep -Eo '[0-9]{1,5}')
    else
        warn_1; echo "qBittorrent service failed to start. Check: systemctl status qbittorrent-nox@$username"; normal_4
        unset qbport
    fi
    tput sgr0; clear
}
