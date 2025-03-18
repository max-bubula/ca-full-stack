default:
    just --list

run:
    docker compose up --build

update:
    git submodule update --recursive --remote

update_and_run: update run
