alias sb='source ~/.bashrc'
alias sal='source ~/.bash_aliases'

alias la='ls -lah'

alias env="env | sort"

path() {
  local paths=$(echo $PATH | tr ":" "\n")

  for path in $paths
  do
    echo $path
  done
}

alias view_bin='xxd -b file'

alias unlock_files='chflags -R nouchg'

alias find_magic='find . -type f -name "*dylib"'
