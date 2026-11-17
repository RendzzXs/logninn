#!/bin/bash

# ==========================================
#   PREMIUM ACCOUNT HACK — ONE SHOT (NO LOOP)
#   Simulasi doang, bukan hack beneran 😄
# ==========================================

GREEN='\033[0;32m'
LIGHT_GREEN='\033[1;32m'
RED='\033[0;31m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
MAGENTA='\033[0;35m'
BLUE='\033[0;34m'
WHITE='\033[1;37m'
NC='\033[0m'

clear

# ---------- HELPER ----------
ts() { date +"%H:%M:%S.%3N"; }
random_ip() { echo "$((RANDOM%256)).$((RANDOM%256)).$((RANDOM%256)).$((RANDOM%256))"; }
random_hex() { printf "%08x" $RANDOM; }
random_user() {
    local names=("ahmed" "bilal" "zain" "hamza" "usman" "ali" "faisal" "saad" "omar" "tariq" "kamran" "adnan")
    echo "${names[RANDOM % ${#names[@]}]}$((RANDOM%9999))"
}
random_pass() {
    local chars='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$'
    local p=""
    for i in {1..12}; do p+="${chars:RANDOM%${#chars}:1}"; done
    echo "$p"
}
random_email() {
    local domains=("gmail.com" "yahoo.com" "hotmail.com" "protonmail.com" "outlook.com")
    echo "$(random_user)@${domains[RANDOM % ${#domains[@]}]}"
}

# ---------- HEADER ----------
echo -e "${LIGHT_GREEN}====================================================${NC}"
echo -e "${LIGHT_GREEN}   PREMIUM ACCOUNT GENERATOR v3.7.1${NC}"
echo -e "${LIGHT_GREEN}   TARGET: GLOBAL | REGION: PAKISTAN (PK)${NC}"
echo -e "${LIGHT_GREEN}====================================================${NC}"
sleep 0.2
echo -e "${YELLOW}[*] Initializing proxy chain...${NC}"
sleep 0.2
echo -e "${YELLOW}[*] Loading 47 proxies from PK, IN, BD...${NC}"
sleep 0.2
echo -e "${YELLOW}[*] Bypassing 2FA protection...${NC}"
sleep 0.2
echo -e "${LIGHT_GREEN}[+] Ready. Streaming logs...${NC}"
echo ""

# ---------- LOG GENERATOR ----------
generate_log() {
    local type=$((RANDOM % 22))
    local ip=$(random_ip)
    local user=$(random_user)
    local pass=$(random_pass)
    local email=$(random_email)
    local hex=$(random_hex)

    case $type in
        0)  echo -e "${CYAN}[$(ts)]${NC} ${LIGHT_GREEN}[PAYPAL]${NC}  Brute-force login ${email} ... ${LIGHT_GREEN}SUCCESS${NC}" ;;
        1)  echo -e "${CYAN}[$(ts)]${NC} ${LIGHT_GREEN}[PAYPAL]${NC}  Balance: \$$((RANDOM%9000+100)).$((RANDOM%99)) | Account VERIFIED" ;;
        2)  echo -e "${CYAN}[$(ts)]${NC} ${LIGHT_GREEN}[PAYPAL]${NC}  2FA bypassed via SMS intercept -> ${hex}" ;;
        3)  echo -e "${CYAN}[$(ts)]${NC} ${MAGENTA}[ALIGHT]${NC}  Alight Motion Pro unlocked for ${user}@pk" ;;
        4)  echo -e "${CYAN}[$(ts)]${NC} ${MAGENTA}[ALIGHT]${NC}  License key generated: AM-PRO-${hex}-${RANDOM}" ;;
        5)  echo -e "${CYAN}[$(ts)]${NC} ${LIGHT_GREEN}[SPOTIFY]${NC} Premium activated -> ${email} | Region: PK" ;;
        6)  echo -e "${CYAN}[$(ts)]${NC} ${LIGHT_GREEN}[SPOTIFY]${NC} Family plan injected: 6 slots | expires $((RANDOM%12+1))mo" ;;
        7)  echo -e "${CYAN}[$(ts)]${NC} ${RED}[NETFLIX]${NC}  Account locked, retrying with proxy ${ip}..." ;;
        8)  echo -e "${CYAN}[$(ts)]${NC} ${LIGHT_GREEN}[NETFLIX]${NC} 4K UHD plan unlocked | ${email} | PK region" ;;
        9)  echo -e "${CYAN}[$(ts)]${NC} ${LIGHT_GREEN}[NETFLIX]${NC} Profile created: user_$((RANDOM%999)) | PIN: $((RANDOM%9999))" ;;
        10) echo -e "${CYAN}[$(ts)]${NC} ${YELLOW}[PROXY]${NC}   Rotating IP -> ${ip} (PK)" ;;
        11) echo -e "${CYAN}[$(ts)]${NC} ${BLUE}[CRYPTO]${NC}  AES-256 session key: ${hex}${hex}" ;;
        12) echo -e "${CYAN}[$(ts)]${NC} ${YELLOW}[WARN]${NC}   Rate limit hit, sleeping $((RANDOM%2+1))s..." ;;
        13) echo -e "${CYAN}[$(ts)]${NC} ${LIGHT_GREEN}[SUCCESS]${NC} Hack PayPal SUCCESSFULLY | target: ${email}" ;;
        14) echo -e "${CYAN}[$(ts)]${NC} ${LIGHT_GREEN}[SUCCESS]${NC} Premium activated: ${email} | pass: ${pass}" ;;
        15) echo -e "${CYAN}[$(ts)]${NC} ${LIGHT_GREEN}[SUCCESS]${NC} Country changed -> PAKISTAN (PK) | latency ${RANDOM}ms" ;;
        16) echo -e "${CYAN}[$(ts)]${NC} ${MAGENTA}[DARKWEB]${NC} Uploading combo list ${hex}.txt ($((RANDOM%500+50)) accounts)" ;;
        17) echo -e "${CYAN}[$(ts)]${NC} ${RED}[ERR]${NC}    Captcha detected, solving with OCR... ${LIGHT_GREEN}OK${NC}" ;;
        18) echo -e "${CYAN}[$(ts)]${NC} ${LIGHT_GREEN}[SPOTIFY]${NC} Downloading offline tracks for ${user} (${RANDOM} songs)" ;;
        19) echo -e "${CYAN}[$(ts)]${NC} ${LIGHT_GREEN}[NETFLIX]${NC} Bypassing geo-restriction -> PK server ${ip}" ;;
        20) echo -e "${CYAN}[$(ts)]${NC} ${WHITE}[SUMMARY]${NC} PayPal:${RANDOM} | Spotify:${RANDOM} | Netflix:${RANDOM} | Alight:${RANDOM} | OK" ;;
        21) echo -e "${CYAN}[$(ts)]${NC} ${LIGHT_GREEN}[DONE]${NC}   Cycle complete. Total premium accounts: $((RANDOM%200+20))" ;;
    esac
}

# ==========================================
#   NULIS LOG (SEKALI JALAN, CEPET)
# ==========================================
TOTAL=60
for ((i=1; i<=TOTAL; i++)); do
    generate_log
    # jeda cepet: 0.01 - 0.03 detik
    sleep 0.0$((RANDOM % 3 + 1))
done

# ---------- BANNER SUKSES ----------
echo ""
sleep 0.3
echo -e "${RED}╔══════════════════════════════════════════════════╗${NC}"
echo -e "${RED}║${LIGHT_GREEN}   ✔  HACK PAYPAL SUCCESSFULLY                    ${RED}║${NC}"
echo -e "${RED}║${LIGHT_GREEN}   ✔  ALIGHT MOTION PRO ACTIVATED                 ${RED}║${NC}"
echo -e "${RED}║${LIGHT_GREEN}   ✔  SPOTIFY PREMIUM UNLOCKED                    ${RED}║${NC}"
echo -e "${RED}║${LIGHT_GREEN}   ✔  NETFLIX PREMIUM UNLOCKED                    ${RED}║${NC}"
echo -e "${RED}║${LIGHT_GREEN}   ✔  COUNTRY: PAKISTAN (PK)                      ${RED}║${NC}"
echo -e "${RED}╚══════════════════════════════════════════════════╝${NC}"
echo ""

# ---------- DETAIL AKUN ----------
echo -e "${YELLOW}[*] Generated Accounts:${NC}"
echo -e "  ${LIGHT_GREEN}PAYPAL${NC}   : $(random_email) | $(random_pass)"
echo -e "  ${MAGENTA}ALIGHT${NC}   : AM-PRO-$(random_hex)-$((RANDOM%9999))"
echo -e "  ${LIGHT_GREEN}SPOTIFY${NC}  : $(random_email) | $(random_pass)"
echo -e "  ${RED}NETFLIX${NC}  : $(random_email) | $(random_pass)"
echo ""

echo -e "${LIGHT_GREEN}[✔] All done. Process finished.${NC}"
echo -e "${YELLOW}[*] Press any key to exit...${NC}"
read -n 1 -s
