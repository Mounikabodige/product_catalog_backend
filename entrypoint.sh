#Currently not using it but is great to start the project with entrypoint.sh to bundle the DB and backend image together.

#!/bin/bash
set -e

# Initialize PostgreSQL if not initialized
if [ ! -s /var/lib/postgresql/data/PG_VERSION ]; then
    echo "Initializing PostgreSQL database..."
    sudo -u postgres /usr/lib/postgresql/15/bin/initdb -D /var/lib/postgresql/data
fi

# Start PostgreSQL in the background
echo "Starting PostgreSQL..."
sudo -u postgres pg_ctl -D /var/lib/postgresql/data -l /var/log/postgresql.log start

# Wait for PostgreSQL to be ready
until pg_isready -q -d postgres; do
  echo "Waiting for PostgreSQL to start..."
  sleep 1
done

# Start backend app
echo "Starting backend app..."
java -jar /app/backend-app.jar
