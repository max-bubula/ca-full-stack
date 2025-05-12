default:
    just --list

stop:
    docker compose down

remove_db:
    docker compose down -v

run:
    docker compose up --build

update:
    git pull
    git submodule update --recursive --remote

update_and_run: update run

restart: stop update run