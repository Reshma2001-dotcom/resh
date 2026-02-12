#!/bin/bash
# Shell script extension to run Linux programs
# Usage: ./run.sh <command> [arguments...]

# Check if at least one argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <command> [arguments...]"
    echo "Example: $0 ls -la"
    echo "Example: $0 echo 'Hello World'"
    exit 1
fi

# Execute the command with all provided arguments
"$@"
