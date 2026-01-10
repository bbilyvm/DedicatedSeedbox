#!/usr/bin/env bash
# qBittorrent_install.sh
# Used by DedicatedSeedbox installer (can be sourced). Provides:
# - qBittorrent_download
# - qBittorrent_install
# - qBittorrent_config

set -u

# ============================================================
# Minimal fallback helpers (only if main script didn't define)
# ============================================================
type need_input >/dev/null 2>&1 || need_input() { :; }
type normal_2   >/dev/null 2>&1 || normal_2()   { echo; }
type normal_3   >/dev/null 2>&1 || normal_3()   { echo; }
type warn_1     >/dev/null 2>&1 || warn_1()     { echo "[WARN]"; }

# ============================================================
# Ensure required variables exist (if not provided by main)
# ============================================================
: "${username:=}"
: "${password:=}"
: "${Cache2:=0}"
: "${version:=}"

# If this file is executed directly, prompt for username/password (optional)
if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
  if [[ -z "${username}" ]]; then
    read -r -p "Enter username to run qBittorrent service: " username
  fi
  if [[ -z "${password}" ]]; then
    read -r -s -p "Enter WebUI password: " password
    echo
  fi
fi

# ============================================================
# Download qbittorrent-nox binary
# ============================================================
function qBittorrent_download {
    need_input; echo "Please enter your choice (qBittorrent Version - libtorrent Version):"; normal_3
    rm -f "$HOME/qbittorrent-nox"

    options=(
      "qBittorrent 4.1.9 - libtorrent-1_1_14"
      "qBittorrent 4.1.9.1 - libtorrent-1_1_14"
      "qBittorrent 4.3.3 - libtorrent-v1.2.13"
      "qBittorrent 4.3.4.1 - libtorrent-v1.2.13"
      "qBittorrent 4.3.5 - libtorrent-v1.2.13"
      "qBittorrent 4.3.6 - libtorrent-v1.2.14"
      "qBittorrent 4.3.7 - libtorrent-v1.2.14"
      "qBittorrent 4.3.8 - libtorrent-v1.2.14"
      "qBittorrent 4.3.9 - libtorrent-v1.2.15"
      "qBittorrent 4.4.0beta2 - libtorrent-v2.0.4"
    )

    select opt in "${options[@]}"; do
        case $opt in
            "qBittorrent 4.1.9 - libtorrent-1_1_14")
                version=4.1.9
                wget -O "$HOME/qbittorrent-nox" "https://raw.githubusercontent.com/bbilyvm/DedicatedSeedbox/main/Torrent%20Clients/qBittorrent/qBittorrent/qBittorrent%204.1.9%20-%20libtorrent-1_1_14/qbittorrent-nox" \
                  && chmod +x "$HOME/qbittorrent-nox"
                break
                ;;
            "qBittorrent 4.1.9.1 - libtorrent-1_1_14")
                version=4.1.9.1
                wget -O "$HOME/qbittorrent-nox" "https://raw.githubusercontent.com/bbilyvm/DedicatedSeedbox/main/Torrent%20Clients/qBittorrent/qBittorrent/qBittorrent%204.1.9.1%20-%20libtorrent-1_1_14/qbittorrent-nox" \
                  && chmod +x "$HOME/qbittorrent-nox"
                break
                ;;
            "qBittorrent 4.3.3 - libtorrent-v1.2.13")
                version=4.3.3
                wget -O "$HOME/qbittorrent-nox" "https://raw.githubusercontent.com/bbilyvm/DedicatedSeedbox/main/Torrent%20Clients/qBittorrent/qBittorrent/qBittorrent%204.3.3%20-%20libtorrent-v1.2.13/qbittorrent-nox" \
                  && chmod +x "$HOME/qbittorrent-nox"
                break
                ;;
            "qBittorrent 4.3.4.1 - libtorrent-v1.2.13")
                version=4.3.4.1
                wget -O "$HOME/qbittorrent-nox" "https://raw.githubusercontent.com/bbilyvm/DedicatedSeedbox/main/Torrent%20Clients/qBittorrent/qBittorrent/qBittorrent%204.3.4.1%20-%20libtorrent-v1.2.13/qbittorrent-nox" \
                  && chmod +x "$HOME/qbittorrent-nox"
                break
                ;;
            "qBittorrent 4.3.5 - libtorrent-v1.2.13")
                version=4.3.5
                wget -O "$HOME/qbittorrent-nox" "https://raw.githubusercontent.com/bbilyvm/DedicatedSeedbox/main/Torrent%20Clients/qBittorrent/qBittorrent/qBittorrent%204.3.5%20-%20libtorrent-v1.2.13/qbittorrent-nox" \
                  && chmod +x "$HOME/qbittorrent-nox"
                break
                ;;
            "qBittorrent 4.3.6 - libtorrent-v1.2.14")
                version=4.3.6
                wget -O "$HOME/qbittorrent-nox" "https://raw.githubusercontent.com/bbilyvm/DedicatedSeedbox/main/Torrent%20Clients/qBittorrent/qBittorrent/qBittorrent%204.3.6%20-%20libtorrent-v1.2.14/qbittorrent-nox" \
                  && chmod +x "$HOME/qbittorrent-nox"
                break
                ;;
            "qBittorrent 4.3.7 - libtorrent-v1.2.14")
                version=4.3.7
                wget -O "$HOME/qbittorrent-nox" "https://raw.githubusercontent.com/bbilyvm/DedicatedSeedbox/main/Torrent%20Clients/qBittorrent/qBittorrent/qBittorrent%204.3.7%20-%20libtorrent-v1.2.14/qbittorrent-nox" \
                  && chmod +x "$HOME/qbittorrent-nox"
                break
                ;;
            "qBittorrent 4.3.8 - libtorrent-v1.2.14")
                version=4.3.8
                wget -O "$HOME/qbittorrent-nox" "https://raw.githubusercontent.com/bbilyvm/DedicatedSeedbox/main/Torrent%20Clients/qBittorrent/qBittorrent/qBittorrent%204.3.8%20-%20libtorrent-v1.2.14/qbittorrent-nox" \
                  && chmod +x "$HOME/qbittorrent-nox"
                break
                ;;
            "qBittorrent 4.3.9 - libtorrent-v1.2.15")
                version=4.3.9
                wget -O "$HOME/qbittorrent-nox" "https://raw.githubusercontent.com/bbilyvm/DedicatedSeedbox/main/Torrent%20Clients/qBittorrent/qBittorrent/qBittorrent%204.3.9%20-%20libtorrent-v1.2.15/qbittorrent-nox" \
                  && chmod +x "$HOME/qbittorrent-nox"
                break
                ;;
            "qBittorrent 4.4.0beta2 - libtorrent-v2.0.4")
                version=4.4.0
                wget -O "$HOME/qbittorrent-nox" "https://raw.githubusercontent.com/bbilyvm/DedicatedSeedbox/main/Torrent%20Clients/qBittorrent/qBittorrent/qBittorrent%204.4.0beta2%20-%20libtorrent-v2.0.4/qbittorrent-nox" \
                  && chmod +x "$HOME/qbittorrent-nox"
                break
                ;;
            *)
                warn_1; echo "Please choose a valid version"; normal_3
                ;;
        esac
    done
}

# ============================================================
# Install qbittorrent-nox binary + systemd service
# ============================================================
function qBittorrent_install {
    normal_2

    if [[ -z "${username}" ]]; then
      warn_1
      echo "username is empty. Please set username before calling qBittorrent_install."
      return 1
    fi

    # Shut down qBittorrent if it has been already installed
    if pgrep -i -f qbittorrent >/dev/null 2>&1; then
      pkill -s "$(pgrep -i -f qbittorrent | head -n1)" >/dev/null 2>&1 || true
    fi

    [[ -e /usr/bin/qbittorrent-nox ]] && rm -f /usr/bin/qbittorrent-nox
    mv -f "$HOME/qbittorrent-nox" /usr/bin/qbittorrent-nox
    chmod +x /usr/bin/qbittorrent-nox

    # Creating systemd services
    [[ -e /etc/systemd/system/qbittorrent-nox@.service ]] && rm -f /etc/systemd/system/qbittorrent-nox@.service
    cat << EOF >/etc/systemd/system/qbittorrent-nox@.service
[Unit]
Description=qBittorrent
After=network.target

[Service]
Type=forking
User=$username
LimitNOFILE=infinity
ExecStart=/usr/bin/qbittorrent-nox -d
ExecStop=/usr/bin/killall -w -s 9 /usr/bin/qbittorrent-nox
Restart=on-failure
TimeoutStopSec=20
RestartSec=10

[Install]
WantedBy=multi-user.target
EOF

    mkdir -p "/home/$username/qbittorrent/Downloads" && chown "$username" "/home/$username/qbittorrent/Downloads"
    mkdir -p "/home/$username/.config/qBittorrent" && chown "$username" "/home/$username/.config/qBittorrent"

    systemctl daemon-reload
    systemctl enable "qbittorrent-nox@$username"
    systemctl start "qbittorrent-nox@$username"
}

# ============================================================
# Configure WebUI password and settings
# ============================================================
function qBittorrent_config {
    if [[ -z "${username}" ]]; then
      warn_1
      echo "username is empty. Please set username before calling qBittorrent_config."
      return 1
    fi

    systemctl stop "qbittorrent-nox@$username" >/dev/null 2>&1 || true

    if [[ "${version}" =~ ^4\.1\. ]]; then
        if [[ -z "${password}" ]]; then
          warn_1; echo "password is empty. Please set password before calling qBittorrent_config."
          return 1
        fi
        md5password=$(echo -n "$password" | md5sum | awk '{print $1}')
        cat << EOF >"/home/$username/.config/qBittorrent/qBittorrent.conf"
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

    elif [[ "${version}" =~ ^4\.(2|3|4)\. ]]; then
        if [[ -z "${password}" ]]; then
          warn_1; echo "password is empty. Please set password before calling qBittorrent_config."
          return 1
        fi

        wget -O "$HOME/qb_password_gen" "https://raw.githubusercontent.com/bbilyvm/DedicatedSeedbox/main/Torrent%20Clients/qBittorrent/qb_password_gen" \
          && chmod +x "$HOME/qb_password_gen"

        PBKDF2password=$("$HOME/qb_password_gen" "$password")

        cat << EOF >"/home/$username/.config/qBittorrent/qBittorrent.conf"
[LegalNotice]
Accepted=true

[Network]
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

        rm -f "$HOME/qb_password_gen"
    fi

    chown -R "$username" "/home/$username/.config/qBittorrent" >/dev/null 2>&1 || true
    systemctl start "qbittorrent-nox@$username"
}

# If executed directly, run a simple flow
if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
  qBittorrent_download
  qBittorrent_install
  qBittorrent_config
  echo "Done."
fi
