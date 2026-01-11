function qBittorrent_download {
    need_input; echo "Please enter your choice (qBittorrent Version - libtorrent Version):"; normal_3
    cd "$HOME" || exit 1
    rm -rf "$HOME/qbittorrent-nox"
    qb_base="https://media.githubusercontent.com/media/bbilyvm/DedicatedSeedbox/main/Torrent%20Clients/qBittorrent/qBittorrent"

    function qBittorrent_fetch {
        version="$1"
        path="$2"
        wget -qO "$HOME/qbittorrent-nox" "$qb_base/$path/qbittorrent-nox" && chmod +x "$HOME/qbittorrent-nox"
    }

    options=("qBittorrent 4.1.9 - libtorrent-1_1_14" "qBittorrent 4.1.9.1 - libtorrent-1_1_14" "qBittorrent 4.2.5 - libtorrent-v1.2.20" "qBittorrent 4.3.3 - libtorrent-v1.2.13" "qBittorrent 4.3.4.1 - libtorrent-v1.2.13" "qBittorrent 4.3.5 - libtorrent-v1.2.13" "qBittorrent 4.3.6 - libtorrent-v1.2.14" "qBittorrent 4.3.7 - libtorrent-v1.2.14" "qBittorrent 4.3.8 - libtorrent-v1.2.14" "qBittorrent 4.3.9 - libtorrent-v1.2.15" "qBittorrent 4.3.9 - libtorrent-v1.2.20" "qBittorrent 4.4.5 - libtorrent-v1.2.20" "qBittorrent 4.4.5 - libtorrent-v2.0.11" "qBittorrent 4.5.5 - libtorrent-v1.2.20" "qBittorrent 4.5.5 - libtorrent-v2.0.11" "qBittorrent 4.6.7 - libtorrent-v1.2.20" "qBittorrent 4.6.7 - libtorrent-v2.0.11" "qBittorrent 5.0.3 - libtorrent-v1.2.20" "qBittorrent 5.0.3 - libtorrent-v2.0.11" "qBittorrent 5.0.4 - libtorrent-v1.2.20" "qBittorrent 5.0.4 - libtorrent-v2.0.11" "qBittorrent 5.0.5 - libtorrent-v1.2.20" "qBittorrent 5.0.5 - libtorrent-v2.0.11" "qBittorrent 5.1.0 - libtorrent-v1.2.20" "qBittorrent 5.1.0 - libtorrent-v2.0.11" "qBittorrent 5.1.1 - libtorrent-v1.2.20" "qBittorrent 5.1.1 - libtorrent-v2.0.11" "qBittorrent 5.1.2 - libtorrent-v1.2.20" "qBittorrent 5.1.2 - libtorrent-v2.0.11" "qBittorrent 5.1.3 - libtorrent-v1.2.20" "qBittorrent 5.1.3 - libtorrent-v2.0.11" "qBittorrent 5.1.4 - libtorrent-v1.2.20" "qBittorrent 5.1.4 - libtorrent-v2.0.11")
    select opt in "${options[@]}"
    do
        case $opt in
            "qBittorrent 4.1.9 - libtorrent-1_1_14")
                qBittorrent_fetch "4.1.9" "qBittorrent%204.1.9%20-%20libtorrent-1_1_14"; break
                ;;
            "qBittorrent 4.1.9.1 - libtorrent-1_1_14")
                qBittorrent_fetch "4.1.9.1" "qBittorrent%204.1.9.1%20-%20libtorrent-1_1_14"; break
                ;;
            "qBittorrent 4.2.5 - libtorrent-v1.2.20")
                qBittorrent_fetch "4.2.5" "qBittorrent%204.2.5%20-%20libtorrent-v1.2.20"; break
                ;;
            "qBittorrent 4.3.3 - libtorrent-v1.2.13")
                qBittorrent_fetch "4.3.3" "qBittorrent%204.3.3%20-%20libtorrent-v1.2.13"; break
                ;;
            "qBittorrent 4.3.4.1 - libtorrent-v1.2.13")
                qBittorrent_fetch "4.3.4.1" "qBittorrent%204.3.4.1%20-%20libtorrent-v1.2.13"; break
                ;;
            "qBittorrent 4.3.5 - libtorrent-v1.2.13")
                qBittorrent_fetch "4.3.5" "qBittorrent%204.3.5%20-%20libtorrent-v1.2.13"; break
                ;;
            "qBittorrent 4.3.6 - libtorrent-v1.2.14")
                qBittorrent_fetch "4.3.6" "qBittorrent%204.3.6%20-%20libtorrent-v1.2.14"; break
                ;;
            "qBittorrent 4.3.7 - libtorrent-v1.2.14")
                qBittorrent_fetch "4.3.7" "qBittorrent%204.3.7%20-%20libtorrent-v1.2.14"; break
                ;;
            "qBittorrent 4.3.8 - libtorrent-v1.2.14")
                qBittorrent_fetch "4.3.8" "qBittorrent%204.3.8%20-%20libtorrent-v1.2.14"; break
                ;;
            "qBittorrent 4.3.9 - libtorrent-v1.2.15")
                qBittorrent_fetch "4.3.9" "qBittorrent%204.3.9%20-%20libtorrent-v1.2.15"; break
                ;;
            "qBittorrent 4.3.9 - libtorrent-v1.2.20")
                qBittorrent_fetch "4.3.9" "qBittorrent%204.3.9%20-%20libtorrent-v1.2.20"; break
                ;;
            "qBittorrent 4.4.5 - libtorrent-v1.2.20")
                qBittorrent_fetch "4.4.5" "qBittorrent%204.4.5%20-%20libtorrent-v1.2.20"; break
                ;;
            "qBittorrent 4.4.5 - libtorrent-v2.0.11")
                qBittorrent_fetch "4.4.5" "qBittorrent%204.4.5%20-%20libtorrent-v2.0.11"; break
                ;;
            "qBittorrent 4.5.5 - libtorrent-v1.2.20")
                qBittorrent_fetch "4.5.5" "qBittorrent%204.5.5%20-%20libtorrent-v1.2.20"; break
                ;;
            "qBittorrent 4.5.5 - libtorrent-v2.0.11")
                qBittorrent_fetch "4.5.5" "qBittorrent%204.5.5%20-%20libtorrent-v2.0.11"; break
                ;;
            "qBittorrent 4.6.7 - libtorrent-v1.2.20")
                qBittorrent_fetch "4.6.7" "qBittorrent%204.6.7%20-%20libtorrent-v1.2.20"; break
                ;;
            "qBittorrent 4.6.7 - libtorrent-v2.0.11")
                qBittorrent_fetch "4.6.7" "qBittorrent%204.6.7%20-%20libtorrent-v2.0.11"; break
                ;;
            "qBittorrent 5.0.3 - libtorrent-v1.2.20")
                qBittorrent_fetch "5.0.3" "qBittorrent%205.0.3%20-%20libtorrent-v1.2.20"; break
                ;;
            "qBittorrent 5.0.3 - libtorrent-v2.0.11")
                qBittorrent_fetch "5.0.3" "qBittorrent%205.0.3%20-%20libtorrent-v2.0.11"; break
                ;;
            "qBittorrent 5.0.4 - libtorrent-v1.2.20")
                qBittorrent_fetch "5.0.4" "qbittorrent%205.0.4%20-%20libtorrent-v1.2.20"; break
                ;;
            "qBittorrent 5.0.4 - libtorrent-v2.0.11")
                qBittorrent_fetch "5.0.4" "qbittorrent%205.0.4%20-%20libtorrent-v2.0.11"; break
                ;;
            "qBittorrent 5.0.5 - libtorrent-v1.2.20")
                qBittorrent_fetch "5.0.5" "qbittorrent%205.0.5%20-%20libtorrent-v1.2.20"; break
                ;;
            "qBittorrent 5.0.5 - libtorrent-v2.0.11")
                qBittorrent_fetch "5.0.5" "qbittorrent%205.0.5%20-%20libtorrent-v2.0.11"; break
                ;;
            "qBittorrent 5.1.0 - libtorrent-v1.2.20")
                qBittorrent_fetch "5.1.0" "qbittorrent%205.1.0%20-%20libtorrent-v1.2.20"; break
                ;;
            "qBittorrent 5.1.0 - libtorrent-v2.0.11")
                qBittorrent_fetch "5.1.0" "qbittorrent%205.1.0%20-%20libtorrent-v2.0.11"; break
                ;;
            "qBittorrent 5.1.1 - libtorrent-v1.2.20")
                qBittorrent_fetch "5.1.1" "qbittorrent%205.1.1%20-%20libtorrent-v1.2.20"; break
                ;;
            "qBittorrent 5.1.1 - libtorrent-v2.0.11")
                qBittorrent_fetch "5.1.1" "qbittorrent%205.1.1%20-%20libtorrent-v2.0.11"; break
                ;;
            "qBittorrent 5.1.2 - libtorrent-v1.2.20")
                qBittorrent_fetch "5.1.2" "qbittorrent%205.1.2%20-%20libtorrent-v1.2.20"; break
                ;;
            "qBittorrent 5.1.2 - libtorrent-v2.0.11")
                qBittorrent_fetch "5.1.2" "qbittorrent%205.1.2%20-%20libtorrent-v2.0.11"; break
                ;;
            "qBittorrent 5.1.3 - libtorrent-v1.2.20")
                qBittorrent_fetch "5.1.3" "qbittorrent%205.1.3%20-%20libtorrent-v1.2.20"; break
                ;;
            "qBittorrent 5.1.3 - libtorrent-v2.0.11")
                qBittorrent_fetch "5.1.3" "qbittorrent%205.1.3%20-%20libtorrent-v2.0.11"; break
                ;;
            "qBittorrent 5.1.4 - libtorrent-v1.2.20")
                qBittorrent_fetch "5.1.4" "qbittorrent%205.1.4%20-%20libtorrent-v1.2.20"; break
                ;;
            "qBittorrent 5.1.4 - libtorrent-v2.0.11")
                qBittorrent_fetch "5.1.4" "qbittorrent%205.1.4%20-%20libtorrent-v2.0.11"; break
                ;;
            *) warn_1; echo "Please choose a valid version"; normal_3;;
        esac
    done
    if grep -q "git-lfs" "$HOME/qbittorrent-nox"; then
        warn_1; echo "qBittorrent binary is stored in Git LFS but not available. Upload binaries or use GitHub releases."; normal_4
        exit 1
    fi
    if [ ! -s "$HOME/qbittorrent-nox" ]; then
        warn_1; echo "qBittorrent download failed"; normal_4
        exit 1
    fi
    if ! file "$HOME/qbittorrent-nox" | grep -q "ELF"; then
        warn_1; echo "qBittorrent download is not an ELF binary"; normal_4
        file "$HOME/qbittorrent-nox"
        exit 1
    fi
    if [ "$(stat -c%s "$HOME/qbittorrent-nox")" -lt 1000000 ]; then
        warn_1; echo "qBittorrent binary size is too small"; normal_4
        exit 1
    fi
}

function qBittorrent_install {
    normal_2
    ## Shut down qBittorrent if it has been already installed
    pgrep -i -f qbittorrent && pkill -s $(pgrep -i -f qbittorrent)
    test -e /usr/bin/qbittorrent-nox && rm /usr/bin/qbittorrent-nox
    install -m 755 "$HOME/qbittorrent-nox" /usr/bin/qbittorrent-nox
    if ! /usr/bin/qbittorrent-nox --version >/dev/null 2>&1; then
        warn_1; echo "qBittorrent binary failed to execute"; normal_4
        ldd /usr/bin/qbittorrent-nox || true
        exit 1
    fi
    ## Creating systemd services
    test -e /etc/systemd/system/qbittorrent-nox@.service && rm /etc/systemd/system/qbittorrent-nox@.service
    touch /etc/systemd/system/qbittorrent-nox@.service
    cat << EOF >/etc/systemd/system/qbittorrent-nox@.service
[Unit]
Description=qBittorrent
After=network.target

[Service]
Type=forking
User=$username
Environment=HOME=/home/$username
WorkingDirectory=/home/$username
LimitNOFILE=infinity
ExecStart=/usr/bin/qbittorrent-nox -d --profile=/home/$username/.config/qBittorrent
ExecStop=/usr/bin/killall -w -s 9 /usr/bin/qbittorrent-nox
Restart=on-failure
TimeoutStopSec=20
RestartSec=10

[Install]
WantedBy=multi-user.target
EOF
    mkdir -p /home/$username/qbittorrent/Downloads && chown $username /home/$username/qbittorrent/Downloads
    mkdir -p /home/$username/.config/qBittorrent && chown $username /home/$username/.config/qBittorrent
    systemctl enable qbittorrent-nox@$username
    systemctl start qbittorrent-nox@$username
}

function qBittorrent_config {
    systemctl stop qbittorrent-nox@$username
    if [[ "${version}" =~ "4.1." ]]; then
        md5password=$(echo -n $password | md5sum | awk '{print $1}')
        cat << EOF >/home/$username/.config/qBittorrent/qBittorrent.conf
[LegalNotice]
Accepted=true

[Network]
Cookies=@Invalid()

[Preferences]
Connection\PortRangeMin=45000
Downloads\DiskWriteCacheSize=$Cache2
Downloads\SavePath=/home/$username/qbittorrent/Downloads/
Queueing\QueueingEnabled=false
WebUI\Password_ha1=@ByteArray($md5password)
WebUI\Port=8080
WebUI\Username=$username
EOF
    elif [[ "${version}" =~ "4.2."|"4.3."|"4.4."|"4.5."|"4.6."|"5.0."|"5.1." ]]; then
        wget  https://raw.githubusercontent.com/bbilyvm/DedicatedSeedbox/main/Torrent%20Clients/qBittorrent/qb_password_gen && chmod +x $HOME/qb_password_gen
        PBKDF2password=$($HOME/qb_password_gen $password)
        cat << EOF >/home/$username/.config/qBittorrent/qBittorrent.conf
[LegalNotice]
Accepted=true

[Network]+
Cookies=@Invalid()

[Preferences]
Connection\PortRangeMin=45000
Downloads\DiskWriteCacheSize=$Cache2
Downloads\SavePath=/home/$username/qbittorrent/Downloads/
Queueing\QueueingEnabled=false
WebUI\Password_PBKDF2="@ByteArray($PBKDF2password)"
WebUI\Port=8080
WebUI\Username=$username
EOF
    rm qb_password_gen
    fi
    systemctl start qbittorrent-nox@$username
}
