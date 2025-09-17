alias zom='ps -ho pid,state'

psmem() {
  ps -o rss= -p "$@"
}
