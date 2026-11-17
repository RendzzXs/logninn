#!/bin/bash

# ==========================================
#   HACKER TERMINAL — INFINITE LOOP MODE
#   Tekan Ctrl+C untuk berhenti
# ==========================================

GREEN='\033[0;32m'
LIGHT_GREEN='\033[1;32m'
RED='\033[0;31m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
MAGENTA='\033[0;35m'
NC='\033[0m'

clear

# Trap Ctrl+C biar keluar rapi
trap 'echo -e "\n${RED}[!] Connection terminated by user.${NC}"; exit 0' INT

# ---------- BANNER ----------
banner() {
clear
echo -e "${LIGHT_GREEN}"
cat << "EOF"
 ██╗  ██╗ █████╗  ██████╗██╗  ██╗███████╗██████╗ 
 ██║  ██║██╔══██╗██╔════╝██║ ██╔╝██╔════╝██╔══██╗
 ███████║███████║██║     █████╔╝ █████╗  ██████╔╝
 ██╔══██║██╔══██║██║     ██╔═██╗ ██╔══╝  ██╔══██╗
 ██║  ██║██║  ██║╚██████╗██║  ██╗███████╗██║  ██║
 ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝
EOF
echo -e "${RED}        >>> SYSTEM BREACH - INFINITE MODE <<<${NC}"
echo -e "${YELLOW}        (Tekan Ctrl+C untuk berhenti)${NC}"
echo ""
}

# ---------- MATRIX RAIN ----------
matrix_rain() {
    local duration=$1
    local end=$((SECONDS + duration))
    local chars="01アイウエオカキクケコサシスセソタチツテトナニヌネノハヒフヘホ"
    while [ $SECONDS -lt $end ]; do
        local line=""
        for i in {1..100}; do
            line+="${chars:RANDOM%${#chars}:1}"
        done
        echo -e "${GREEN}${line}${NC}"
        sleep 0.03
    done
}

# ---------- FAKE HACK LOG ----------
fake_hack() {
    local targets=("192.168.1.1" "10.0.0.5" "172.16.0.1" "8.8.8.8" "203.0.113.7")
    local target=${targets[RANDOM % ${#targets[@]}]}
    local logs=(
        "Scanning ports on target ${target}..."
        "Port 22 (SSH) OPEN"
        "Port 80 (HTTP) OPEN"
        "Port 443 (HTTPS) OPEN"
        "Port 3306 (MySQL) OPEN"
        "Bypassing firewall... [OK]"
        "Injecting payload into memory..."
        "Decrypting AES-256 key... [OK]"
        "Establishing reverse shell on ${target}..."
        "Downloading /etc/passwd..."
        "Cracking password hash... [OK]"
        "Privilege escalation... [ROOT]"
        "Accessing database server..."
        "Dumping user credentials... [OK]"
        "Wiping traces... [DONE]"
        "Exfiltrating data to remote server..."
        "Connection established with ${target}!"
    )
    for log in "${logs[@]}"; do
        echo -e "${LIGHT_GREEN}[+]${NC} ${log}"
        sleep 0.$((RANDOM % 4 + 1))
    done
}

# ---------- PROGRESS BAR ----------
progress_bar() {
    local label=$1
    local total=40
    echo -ne "${YELLOW}[*] ${label}: ${NC}"
    for ((i=0; i<=total; i++)); do
        local percent=$((i * 100 / total))
        local filled=$i
        local empty=$((total - i))
        printf "\r${CYAN}["
        printf "%${filled}s" | tr ' ' '█'
        printf "%${empty}s" | tr ' ' '-'
        printf "] ${percent}%%${NC}"
        sleep 0.03
    done
    echo -e " ${LIGHT_GREEN}[COMPLETE]${NC}"
}

# ---------- SPINNER ----------
spinner() {
    local label=$1
    local chars='|/-\'
    for i in {1..15}; do
        printf "\r${LIGHT_GREEN}[%c] ${label}...${NC}" "${chars:i%4:1}"
        sleep 0.1
    done
    printf "\r${LIGHT_GREEN}[✔] ${label} [DONE]${NC}\n"
}

# ---------- FAKE IP GENERATOR ----------
random_ip() {
    echo "$((RANDOM%256)).$((RANDOM%256)).$((RANDOM%256)).$((RANDOM%256))"
}

# ---------- GLITCH TEXT ----------
glitch_text() {
    local text=$1
    echo -e "${MAGENTA}${text}${NC}"
    sleep 0.2
}

# ==========================================
#   MAIN LOOP — JALAN TERUS
# ==========================================
banner
sleep 1

while true; do
    # Matrix rain sebentar
    matrix_rain 2

    # Fake hacking log
    fake_hack

    # Progress bar random
    local_labels=("Downloading confidential data" "Encrypting files" "Uploading to dark web" "Cloning database" "Brute forcing password")
    progress_bar "${local_labels[RANDOM % ${#local_labels[@]}]}"

    # Spinner random
    spinner_labels=("Bypassing firewall" "Cracking hash" "Decrypting packets" "Spoofing MAC address")
    spinner "${spinner_labels[RANDOM % ${#spinner_labels[@]}]}"

    # Fake IP connection
    echo -e "${CYAN}[*] Connecting to $(random_ip):$((RANDOM % 65535 + 1))...${NC}"
    sleep 0.5

    # Glitch warning
    glitch_text "⚠  WARNING: SYSTEM INTEGRITY COMPROMISED  ⚠"

    echo ""
    echo -e "${RED}────────────────────────────────────────────${NC}"
    echo -e "${LIGHT_GREEN}   [ ♻  RESTARTING CYCLE... ]${NC}"
    echo -e "${RED}────────────────────────────────────────────${NC}"
    echo ""
    sleep 1
    clear
done
