# import functions
__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "${__dir}/fuzzy.sh"

# set base dirs
SYSTEM_BASE_DIR="/mnt/c"
DEV_DIR="${SYSTEM_BASE_DIR}/dev"
SCRIPTS_DIR="${DEV_DIR}/scripts"
PROFILE_DIR="${SCRIPTS_DIR}/profile/main.sh"

# other imports
source ~/.current_project 


# exports
export PATH="${SCRIPTS_DIR}/scripts:$PATH"


### aliases/ functions ###
alias devdir="cd ${DEV_DIR}"

# fuzzy search (p)ro(j)ects
function pj(){
    cd "$(__fuzzy_dir_search ${DEV_DIR})"
}

# (p)roject (dev)
# go the project, open the project on vscode, then run dev.sh if it exists
function pdev() {
    pj
    git pull
    code .
    if [[ -f "./dev.sh" ]]; then
        ./dev.sh
    fi
}




# cd into dev dir
cd "${DEV_DIR}"