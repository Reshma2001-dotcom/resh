#!/bin/bash
# Shell script extension to run Linux programs
# Usage: ./run.sh <command> [arguments...]
#
# WARNING: This script executes commands without validation.
# Only use with trusted input to avoid security risks.

# Check if at least one argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <command> [arguments...]"
    echo "Example: $0 ls -la"
    echo "Example: $0 echo 'Hello World'"
    exit 1
fi

# Execute the command with all provided arguments
# Capture and propagate exit code for better error handling
"$@"
exit_code=$?

if [ $exit_code -ne 0 ]; then
    echo "Error: Command failed with exit code $exit_code" >&2
fi

exit $exit_code
