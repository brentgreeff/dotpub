alias doc="docker"
alias pose="docker-compose"

alias images="docker images | sort"

alias prune="doc system prune"
alias docnet="doc network ls"

alias cred="pose exec download bin/rails credentials:edit"
# r credentials:edit --environment production

# alias redis='pose run --rm --name rc redis redis-cli -h redis'
# alias psql='pose run --rm --name db database psql -U postgres -h database'
alias docps="docker ps -a | less -S"

# sudo systemctl status docker
