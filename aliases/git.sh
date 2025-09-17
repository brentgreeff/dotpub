alias main='git switch main'
alias d='git diff'
alias dic='git diff --cached'
alias show='git show'
alias s='git s'
alias push='git push'
alias pull='git pull'
alias fetch='git fetch'
alias ci='git ci'
alias co='git co'
alias gac='git ac'
alias aci='git ac'
alias 10='git l -10'
alias 20='git l -20'
alias 30='git l -30'
alias blame='git blame'
alias merge='git merge'

alias fixed='git add .; git rebase --continue'
alias pick='git cherry-pick -n'
alias pickc='git cherry-pick --continue'

alias switch='git switch'

alias a='git add'

# git log -p --after="2022-07-1" | wc -l

rmb() {
  git branch -D $1
  git push origin --delete $1
}

un() {
  git reset "$@"
  clear
  s
}

cs() {
  clear
  s
}

undo() {
  clear
  git undo
  s
  cat .git/COMMIT_EDITMSG | head -n 8
}

fundo() {
  clear
  git co $1~1 -- $2
  s
}

ni() {
  name=$(echo "$@" | tr " " "-")
  git co -b "SAAS-${name}"
  clear
  s
}

nb() {
  name=$(echo "$@" | tr " " "-")
  clear
  git co -b "${name}"
}

smp() {
  set -x
  git add .
  git stash
  main
  pull
  git stash apply
  git reset
  set +x
}

stash() {
  git stash "$@"
}

alias br='git branch'

pending_prod() {
  set -x
  git --no-pager log --pretty=format:"%ad %h %x09%s" --date=short production...main
  set +x
}

dmain() {
  set -x
  git diff main..."$@"
  set +x
}
