#!/usr/bin/env bash
# Check for required Python dependencies

if [! -f "${PWD}/requirements.txt" ]; then
  echo "Missing requirements.txt file"
  exit 1
fi

if [! -f "${PWD}/requirements-dev.txt" ]; then
  echo "Missing requirements-dev.txt file"
  exit 1
fi

# Check for Scheme