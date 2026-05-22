#! /usr/bin/env sh
while ! nc -z "$POSTGRES_HOST" "$POSTGRES_PORT"; do
  sleep 10
  printf "Database %s:%s not ready" "$POSTGRES_HOST" "$POSTGRES_PORT"
done

sleep 10
alembic upgrade head

exec "$@"
