function __fuzzy_dir_search() {
   local dir="$1"
   echo "${dir}/$(ls ${dir} | fzf)"
}