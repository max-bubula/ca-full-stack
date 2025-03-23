default:
    just --list

stop:
    docker compose down

run:
    docker compose up --build

update:
    git pull
    git submodule update --recursive --remote

update_and_run: update run

restart: stop update run