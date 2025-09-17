alias doc="docker"
alias pose="docker-compose"

fresh() {
  r db:empty && r db:seed
}

pin() {
  set -x
  ./bin/importmap pin "$@"
  set +x
}

p() {
  set -x
  ./bin/rails s
  set +x
}

watch() {
  set -x
  ./bin/guard -P livereload
  set +x
}

rubocop() {
  set -x
  ./bin/rubocop
  set +x
}

routes() {
  set -x
  ./bin/rails routes | grep "$@"
  set +x
}

migrate() {
  set -x
  ./bin/rails db:migrate "$@"
  set +x
}
alias mi="migrate"

test_migrate() {
  set -x
  ./bin/rails db:migrate RAILS_ENV=test "$@"
  set +x
}
alias mit="test_migrate"

rollback() {
  set -x
  ./bin/rails db:rollback "$@"
  set +x
}

redo() {
  set -x
  ./bin/rails db:migrate:redo "$@"
  set +x
}

r() {
  set -x
  ./bin/rails "$@"
  set +x
}

gen() {
  set -x
  ./bin/rails generate "$@"
  set +x
}

b() {
  set -x
  ./bin/bundle "$@"
  set +x
}

c() {
  set -x
  ./bin/rails c
  set +x
}

up() {
  set -x
  docker-compose up --force-recreate "$@"
  set +x
}

down() {
  set -x
  docker-compose down "$@"
  set +x
}

tlog() {
  set -x
  tail -f log/test.log
  set +x
}
