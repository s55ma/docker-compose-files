#!/bin/sh

# Define the path to the test file on the Samba share
TEST_FILE="/downloads/testfile.txt"

# Infinite loop to check for the presence of the test file
while true; do
  if [ -f "$TEST_FILE" ]; then
    echo "[$(date)] Test file found. Starting the service..."
    exec "$@"
  else
    echo "[$(date)] Test file not found. Waiting for 10 seconds..."
    sleep 10
  fi
done
