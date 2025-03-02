# CA Full Stack Application

## Cloning this repo

To clone this repository, run the following command in your terminal:

```bash
git clone --recurse-submodules https://github.com/max-bubula/ca-full-stack.git
```


## Required Environment Variables

Make sure to set the following environment variables in your shell before running the application:

### Frontend
- `VITE_GOOGLE_CLIENT_ID=<your_google_client_id>`

### Backend
- `YOUTUBE_API_KEY=<your_youtube_api_key>`

Ensure that all environment variables are set correctly to avoid any issues while running the application.

## Running the Application

The easiest way to run application is to run:
```bash
just run
```
If you don't have `just` install instructions: https://github.com/casey/just

For more options run `just` or `just --list`.

To download latest changes run `just update`.

To run the application via `docker compose`, navigate to the `ca-full-stack` directory and execute the following command:

```bash
docker compose up --build
```

## Adding commands

To add new commands e.g. run test in all repositories add to `justfile` new command.
Just docs: https://just.systems/man/en/

## Services

The following services will be started:

- **Frontend**: Accessible at http://localhost:3000
- **Backend**: Runs in the background and connects to the database.
- **Database**: A PostgreSQL instance for data storage.
- **Flyway Migration**: Handles database migrations.
- **Analysis Service**: Processes data and connects to the monitoring service.
- **Analysis Service Monitoring**: Monitors the analysis service, avaliable at: http://localhost:4200/flows
