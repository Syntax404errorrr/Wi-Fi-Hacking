#!/data/data/com.termux/files/usr/bin/bash

# ==========================
# 🎨 Color Variables
# ==========================
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
MAGENTA='\033[1;35m'
CYAN='\033[1;36m'
BOLD='\033[1m'
RESET='\033[0m'

# ==========================
# 🚀 Branded Banner
# ==========================
echo -e "${CYAN}${BOLD}"
echo "╔══════════════════════════════════════════════════════╗"
echo "║              Wi-Fi Hacking Installer                ║"
echo "║           Wi-Fi Hacking • Rooted Termux         ║"
echo "╚══════════════════════════════════════════════════════╝"
echo -e "${RESET}"

# ==========================
# 🔧 Author Info
# ==========================
echo -e "${YELLOW}${BOLD}🔧 Author   : Syntax404errorr"
echo -e "📡 Tool     : Wi-Fi Hacking"
echo -e "📱 Requires : Rooted Android device with Termux${RESET}\n"
sleep 1

# ==========================
# 🧩 Reusable Step Function
# ==========================
run_step() {
    echo -e "${BLUE}[•] $1...${RESET}"
    eval "$2"
    if [ $? -eq 0 ]; then
        echo -e "${GREEN}[✔] Success: $1${RESET}\n"
    else
        echo -e "${RED}[✘] Failed: $1${RESET}\n"
        echo -e "${RED}⚠️  Please fix this step manually if needed.${RESET}\n"
    fi
    sleep 1
}

# ==========================
# 📦 Start Installation
# ==========================

run_step "Updating Termux package lists" "pkg update -y && pkg upgrade -y"
run_step "Installing root-repo" "pkg install -y root-repo"
run_step "Installing required packages" \
"pkg install -y git tsu python wpa-supplicant pixiewps iw openssl"
run_step "Requesting Termux storage permissions" "termux-setup-storage"
run_step "Cloning Wi-Fi-Hacking repository" \
"git clone https://github.com/Syntax404errorrr/Wi-Fi-Hacking"

# ==========================
# ✅ Final Instructions
# ==========================
echo -e "${GREEN}${BOLD}🎉 Installation Complete!${RESET}"
echo -e "${CYAN}${BOLD}
To run the FARHAN Shot tool, use:

${YELLOW}sudo python Wi-Fi-Hacking/
File/Wi-Fi-Hacking.py -i wlan0 -K${RESET}

💡 Replace ${MAGENTA}wlan0${RESET} with your actual wireless interface (e.g. wlan1, eth0).

📬 Telegram Support: ${GREEN}@FARHAN_MUH_TASIM${RESET}
"
