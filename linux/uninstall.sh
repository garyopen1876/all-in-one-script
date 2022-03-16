# Text Color Variables
GREEN='\033[32m'  # Green
YELLOW='\033[33m' # YELLOW
CLEAR='\033[0m'   # Clear color and formatting

# Setup script for setting up a new macos machine
echo -e "${GREEN}Starting Uninstall :(${CLEAR}"


uninstall-dev-tools() {

    # NVM
    echo -e "${YELLOW}Uninstall NVM${CLEAR}"
    brew uninstall nvm --force

    # yarn
    echo -e "${YELLOW}Uninstall yarn${CLEAR}"
    brew uninstall yarn --force

}

uninstall-basic-tools() {
    # Googler
    echo -e "${YELLOW}Uninstall Googler${CLEAR}"
    brew uninstall googler --force

    # 7z
    echo -e "${YELLOW}Uninstall 7z${CLEAR}"
    brew uninstall sevenzip
}


uninstall-all() {
    echo -e "${GREEN}Starting Uninstall dev-tools !${CLEAR}"
    uninstall-dev-tools

    echo -e "${GREEN}Starting Uninstall basic-tools !${CLEAR}"
    uninstall-basic-tools
}

uninstall-all
