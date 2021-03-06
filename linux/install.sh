#!/usr/bin/env bash

# Text Color Variables
GREEN='\033[32m'  # Green
YELLOW='\033[33m' # YELLOW
CLEAR='\033[0m'   # Clear color and formatting

# Setup script for setting up a new macos machine
echo -e "${GREEN}Starting Install :)${CLEAR}"

# Bonk!
echo -e "                              ...:::::^^!7                                             "              
echo -e "                           .?5555GG555555Y!.                                           "              
echo -e "                          ?B#YPP55555YJJJY?!^                BONK!                     "              
echo -e "                        .YGBBGGPY5YJJ5GP5YYJG.                           BONK!         "              
echo -e "                       :YP55555Y?!^.:^~~75PGBJ.                BONK!                   "              
echo -e "                    .^JPPP5555Y?!^:::^7YJ??Y#&&?                                       "              
echo -e "                  .7Y5555PGGP5YJ7!^::^?PGP5Y5PY^                           ^.          "              
echo -e "                 !PG5Y5555PGGPP5Y?!~^^^~!??:                             !&@&.         "              
echo -e "                JBGGGP5YYJJY555P5YJ7!~^^^~~.                           7#&&J.          "              
echo -e "               !PGBGGGGPYJ77!!!7777!^::^~^^.                         7&@@5^            "              
echo -e "              ~P55PBBGP5YJ?77!~~^^^^:::^^^^.                       7&@@#PY5G?          "             
echo -e "             ^#BPPPGBGPPY7!!!~~~~~^^^^^^^^^.                     ~&@&B555PPGPJ:        "              
echo -e "             5BBBGPPGGGPPY7~^^^^^^^^^^^~~~~.                   .Y&&PJ!^~?Y5PP55PY.     "              
echo -e "             PGGGGGPPGGGPP5?!~~~~~~~~^~!777                  ^PGG5Y?~:~?Y5P555GGBG:    "              
echo -e "             ?BGGGGPPPGGPPP5YJ7!!!!!~!!!!7?                 .7?.~!~^~!?????J5PGBGPY.   "              
echo -e "             .YGGGBGGGB#BG555J777777??!~~!7               .:.  ^^^::^^~~~!!?5PBGPPBP   "              
echo -e "               !GBBBBB#&#G5YY?!JJJJPBP7^~~7.            ...   .!!~^^^^~^^~75PGGPPGBG^  "              
echo -e "                .!P####&BP5YJ7!???YGBB5~~~!??7~:.     ..       77!!~!!!!?Y5PGGPPGGGG.  "              
echo -e "                   :JG#&#GG5J7!!!!77J5PY7!!. .:^?!^ ..         7~~?Y?777J55G#BGGBGP^   "              
echo -e "                      .!5PGPY?7?!~~^^~JY?7!!:.    ..       .:^!!~~PBPJJ77J5G#&#BG?.    "              
echo -e "                          ~G5J7:         .~!77?!^~7      .^^:.:!7YPJ77!!7YPB#BY^       "              
echo -e "                           55J!            .^!!~!7:      ..:^~!!^^:..:^!?55~:          "              
echo -e "                           5PJ?.              ...        :777~.        :JP^            "              
echo -e "                           !P?7^                                       ~JP:            "              
echo -e "                           .7?77~                                     :7?7             "              
echo -e "                             ...                                     ...               "

## Setup /etc/sudoers for sudo without password prompt
# echo -e "${GREEN}Setup NOPASSWD for %staff ${CLEAR}"
# sudo grep -q '^%staff' /etc/sudoers || sudo sed -i '' 's/^%admin.*/&\n%staff          ALL = (ALL) NOPASSWD: ALL/' /etc/sudoers

## Command Line Tools for Xcode
# echo "Install command line developer tools"
# xcode-select --install
# xcode-select -p &> /dev/null
# if [ $? -ne 0 ]; then
#   echo "Xcode CLI tools not found. Installing them..."
#   touch /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress;
#   PROD=$(softwareupdate -l |
#     grep "\*.*Command Line" |
#     head -n 1 | awk -F"*" '{print $2}' |
#     sed -e 's/^ *//' |
#     tr -d '\n')
#   softwareupdate -i "$PROD" -v;
# else
#   echo "Xcode CLI tools OK"
# fi

install-dev-tools() {

    # Homebrew
    echo -e "${YELLOW}Install Homebrew${CLEAR}"
    CI=1
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    # Homebrew path setting
    export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
    brew update

    # NVM
    echo -e "${YELLOW}Install NVM${CLEAR}"
    brew install nvm

    # git
    echo -e "${YELLOW}Install GIT${CLEAR}"
    brew install git
    git config --global user.email "garyopen1876@gmail.com"
    git config --global user.name "Gary"

    # yarn
    echo -e "${YELLOW}Install yarn${CLEAR}"
    brew install yarn

    # python 3.10
    echo -e "${YELLOW}Install python${CLEAR}"
    brew install python@3.10

}

install-basic-tools() {
    
    # Googler
    echo -e "${YELLOW}Install Googler${CLEAR}"
    brew install googler

    # 7z
    echo -e "${YELLOW}Install 7z${CLEAR}"
    brew install sevenzip

}


install-all() {
    echo -e "${GREEN}Starting Install dev-tools !${CLEAR}"
    install-dev-tools

    echo -e "${GREEN}Starting Install basic-tools !${CLEAR}"
    install-basic-tools
}

install-all