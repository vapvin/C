# namp automator code..

# Color Definitions

RED='\033[0;31m'
YELLOW='\033[0;33m'
GREEN='\033[0;32m'
NC='\033[0m'

SECONDS= 0

usage(){
    echo -e ""
    echo -e "${RED}Usage: $0 <TARGET-IP> <TYPE>"
    echo -e "${YELLOW}"
    echo -e "Scan Types:"
    echo -e "\tQuick:	Shows all open ports quickly (~15 seconds)"
    echo -e "\tBasic:	Runs Quick Scan, then runs a more thorough scan on found ports (~5 minutes)"
    echo -e "\tUDP:	Runs \"Basic\" on UDP ports (~5 minutes)"
    echo -e "\tFull:	Runs a full range port scan, then runs a thorough scan on new ports (~5-10 minutes)"
    echo -e "\tVulns:	Runs CVE scan and nmap Vulns scan on all found ports (~5-15 minutes)"
    echo -e "\tRecon:	Suggests recon commands, then prompts to automatically run them"
    echo -e "\tAll:	Runs all the scans (~20-30 minutes)"
    echo -e ""
    exit 1
}


header(){
echo -e ""

if [ "$2" == "All" ]; then
	echo -e "${YELLOW}Running all scans on $1"
else
	echo -e "${YELLOW}Running a $2 scan on $1"
fi

subnet=$(echo "$1" | cut -d "." -f 1,2,3)".0"

checkPing=$(checkPing "$1")
nmapType="nmap -Pn"

: '
#nmapType=`echo "${checkPing}" | head -n 1`
if [ "$nmapType" != "nmap" ]; then 
	echo -e "${NC}"
	echo -e "${YELLOW}No ping detected.. Running with -Pn option!"
	echo -e "${NC}"
fi
'

ttl=$(echo "${checkPing}" | tail -n 1)
if [[  $(echo "${ttl}") != "nmap -Pn" ]]; then
	osType="$(checkOS "$ttl")"	
	echo -e "${NC}"
	echo -e "${GREEN}Host is likely running $osType"
	echo -e "${NC}"
fi

echo -e ""
echo -e ""
}
