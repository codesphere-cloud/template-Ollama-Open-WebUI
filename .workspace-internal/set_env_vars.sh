#!/bin/bash

ENV_FILE=".env" # Adjust path if your .env file is elsewhere

if [ ! -f "$ENV_FILE" ]; then
  echo "Error: .env file not found at $ENV_FILE"
  exit 1
fi

echo "Setting environment variables"

# Loop through each line in the .env file
while IFS='=' read -r key value; do
  # Skip empty lines and comments
  if [[ -z "$key" || "$key" =~ ^# ]]; then
    continue
  fi

  # Remove leading/trailing whitespace from key and value
  key=$(echo "$key" | xargs)
  value=$(echo "$value" | xargs)

  # Check if value is enclosed in quotes and remove them
  if [[ "$value" =~ ^[\'\"] && "$value" =~ [\'\"]$ ]]; then
    value="${value:1:${#value}-2}"
  fi

  # Expand environment variables
  # For example: "${HOME}/path" will expand to the actual path
    # Note:  Risk of code injection
    # As 'eval' can execute arbitrary code avoid using it on untrusted input
  expanded_value=$(eval echo "$value")

  # Construct the environment variable string
  ENV_VAR="${key}=${expanded_value}"

  echo "Setting: ${ENV_VAR}"
  cs set-env -e "$ENV_VAR"
  
  # Optional: Add a small delay if you hit rate limits or want to be gentle
  sleep 0.01

done < "$ENV_FILE"

# echo "Finished setting environment variables."
