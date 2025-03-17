default:
    just --list

run:
    docker compose up --build

update:
    cd ca-app-db && git pull
    cd ca-service-analysis && git pull
    cd comment-analysis && git pull
    cd comment-analysis-frontend && git pull

update_and_run: update run
