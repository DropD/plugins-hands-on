BLD="$(tput bold)"
RED="$(tput setaf 1)$BLD"
GRN="$(tput setaf 2)$BLD"
BLU="$(tput setaf 4)$BLD"
NOC="$(tput sgr0)"

function confirm {
    echo "${RED}DONE${NOC}"
}

function cmd {
    read
    echo "$2 $ ${GRN}$1${NOC}"
    read -s
    if [[ $PRES_RUN = 1 ]]; then
	$1 
    else 
	echo "skipping command"
    fi
    confirm
}

function cmd_no {
    read
    echo "$2 $ ${GRN}$1${NOC}"
    if [[ $PRES_RUN = 1 ]]; then
	$1
    else
	echo "skipping command"
    fi
    confirm
}

function header {
    echo "============================="
    echo "  $1"
    echo "============================="
    echo "${RED}python executable is: ${BLU}$(which python)${NOC}"
    echo "${RED}pip executable is: ${BLU}$(which pip)${NOC}"
    echo "${RED}first python lib is: ${BLU}$(python -c 'import sys;print filter(None, sys.path)[0]')${NOC}"
}
