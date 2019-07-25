set -o errexit
set -o pipefail

PROJECT_STATE="$HOME/.current_project"
DEV_PATH="/mnt/c/dev/"

# need to create a file 
function set_project() {
    local PROJECT_NAME="$(ls ${DEV_PATH} | fzf)"
    echo "CURRENT_PROJECT=${PROJECT_NAME}" > "${PROJECT_STATE}"
}

set_project