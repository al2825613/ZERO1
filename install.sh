#!/bin/bash

# تحديث الحزم الأساسية
echo "جارٍ تحديث الحزم..."
apt update && apt upgrade -y
pkg install git python python2 curl wget php openssh -y

# دالة لتثبيت الأدوات
install_tool() {
    tool=$1
    case $tool in
        pixload)
            git clone https://github.com/default-user/pixload
            ;;
        brutegmail)
            git clone https://github.com/default-user/brutegmail
            ;;
        selfkiller)
            git clone https://github.com/default-user/selfkiller
            ;;
        Report)
            git clone https://github.com/default-user/Report
            ;;
        DarkFly-Tool)
            git clone https://github.com/default-user/DarkFly-Tool
            ;;
        mbf)
            git clone https://githup.com/pirmansx/mbf
            ;;
        inshackle)
            git clone https://github.com/default-user/inshackle
            ;;
        FB-Brute)
            git clone https://github.com/default-user/FB-Brute
            ;;
        WA_CRASHER)
            git clone https://github.com/default-user/WA_CRASHER
            ;;
        hammer)
            git clone https://github.com/default-user/hammer
            ;;
        SocialPhish)
            git clone https://github.com/default-user/SocialPhish
            ;;
        FirecrackOnlineHacking)
            git clone https://github.com/default-user/FirecrackOnlineHacking
            ;;
        osi.ig)
            git clone https://github.com/default-user/osi.ig
            ;;
        java)
            git clone https://github.com/default-user/java
            ;;
        Hack-Telegram)
            git clone https://github.com/default-user/Hack-Telegram
            ;;
        new)
            git clone https://github.com/default-user/new
            ;;
        HxWhatsApp)
            git clone https://github.com/default-user/HxWhatsApp
            ;;
        wifite2)
            git clone https://github.com/default-user/wifite2
            ;;
        Card-Number)
            git clone https://github.com/default-user/Card-Number
            ;;
        Cam-Hackers)
            git clone https://github.com/default-user/Cam-Hackers
            ;;
        p-gen)
            git clone https://github.com/default-user/p-gen
            ;;
        Termux_HackingLab_Setup)
            git clone https://github.com/default-user/Termux_HackingLab_Setup
            ;;
        fsociety)
            git clone https://github.com/default-user/fsociety
            ;;
        fikrado.py)
            git clone https://github.com/fikrado/fikrado.py
            ;;
        TBomb)
            git clone https://github.com/default-user/TBomb
            ;;
        ALIENS.HaCK.Camera)
            git clone https://github.com/default-user/ALIENS.HaCK.Camera
            ;;
        trace_num)
            git clone https://github.com/default-user/trace_num
            ;;
        ipdrone)
            git clone https://github.com/default-user/ipdrone
            ;;
        sayhello)
            git clone https://github.com/default-user/sayhello
            ;;
        CameraHack)
            git clone https://github.com/default-user/CameraHack
            ;;
        multiBF_ig)
            git clone https://github.com/default-user/multiBF_ig
            ;;
        shellphish)
            git clone https://github.com/default-user/shellphish
            ;;
        OH-SMSbomber)
            git clone https://github.com/default-user/OH-SMSbomber
            ;;
        FBH)
            git clone https://github.com/default-user/FBH
            ;;
        Lazymux)
            git clone https://github.com/default-user/Lazymux
            ;;
        *)
            echo "الأداة غير معروفة: $tool"
            ;;
    esac
}

# قائمة الأدوات
tools=(
    "pixload"
    "brutegmail"
    "selfkiller"
    "Report"
    "DarkFly-Tool"
    "mbf"
    "inshackle"
    "FB-Brute"
    "WA_CRASHER"
    "hammer"
    "SocialPhish"
    "FirecrackOnlineHacking"
    "osi.ig"
    "java"
    "Hack-Telegram"
    "new"
    "HxWhatsApp"
    "wifite2"
    "Card-Number"
    "Cam-Hackers"
    "p-gen"
    "Termux_HackingLab_Setup"
    "fsociety"
    "fikrado.py"
    "TBomb"
    "ALIENS.HaCK.Camera"
    "trace_num"
    "ipdrone"
    "sayhello"
    "CameraHack"
    "multiBF_ig"
    "shellphish"
    "OH-SMSbomber"
    "FBH"
    "Lazymux"
)
for t in "${tools[@]}"; do
    install_tool "$t"
done

echo "تم تثبيت جميع الأدوات."
