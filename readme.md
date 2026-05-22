# Docker Lab

A multi-container app with a FastAPI backend, Flask frontend, Nginx reverse proxy, and PostgreSQL database, orchestrated with Docker Compose.

## Services

| Service    | Description                        |
|------------|------------------------------------|
| `api`      | FastAPI backend on port 8080       |
| `frontend` | Flask web app served via uWSGI     |
| `nginx`    | Reverse proxy, exposed on port 80  |
| `postgres` | PostgreSQL 17                      |

## Setup

Copy `.env.example` to `.env` and fill in the values, then:

```bash
docker compose up --build
```

App is available at `http://localhost`.

## Project structure

```
api/        FastAPI app with Alembic migrations
web/        Flask frontend
nginx/      Nginx config and Dockerfile
compose.yaml
```
