#!/bin/sh

tput sgr0; clear

## Load text color settings
source <(wget -qO- https://raw.githubusercontent.com/bbilyvm/DedicatedSeedbox/main/Miscellaneous/tput.sh)

## Check Root Privilege
if [ $(id -u) -ne 0 ]; then 
    warn_1; echo  "This script needs root permission to run"; normal_4
    exit 1 
fi

## Check Linux Distro
distro_codename="$(source /etc/os-release && printf "%s" "${VERSION_CODENAME}")"
if [[ $distro_codename != buster ]] && [[ $distro_codename != bullseye ]] && [[ $distro_codename != bookworm ]] && [[ $distro_codename != trixie ]] ; then
	warn_1; echo "Only Debian 10/11/12/13 is supported"; normal_4
	exit 1
fi

while true; do
    source <(wget -qO- https://raw.githubusercontent.com/bbilyvm/DedicatedSeedbox/main/tweaking.sh)
    normal_3; options=("Tweaked BBR Install" "System Tuning" "Configure Boot Script")
    select opt in "${options[@]}"
    do
        case $opt in
            "Tweaked BBR Install")
                apt-get -qqy install sudo
                Tweaked_BBR
                normal_1; echo "Reboot for Tweaked BBR to take effect"; break
                ;;
            "System Tuning")
                CPU_Tweaking; NIC_Tweaking; Network_Other_Tweaking; Scheduler_Tweaking; kernel_Tweaking; break
                ;;
            "Configure Boot Script")
                source <(wget -qO- https://raw.githubusercontent.com/bbilyvm/DedicatedSeedbox/main/Miscellaneous/boot-script.sh)
                boot_script; break
                ;;
            *) warn_1; echo "Please choose a valid action";;
        esac
    done
done
