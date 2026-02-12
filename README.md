# resh

A simple shell script extension for running Linux programs.

## Files

- `run.sh` - Shell script extension to execute Linux commands

## Usage

The `run.sh` script provides an easy way to run any Linux program with arguments:

```bash
./run.sh <command> [arguments...]
```

### Examples

```bash
# List files in current directory
./run.sh ls -la

# Print a message
./run.sh echo "Hello World"

# Display system information
./run.sh uname -a

# Check disk usage
./run.sh df -h
```

## Setup

Make sure the script has executable permissions:

```bash
chmod +x run.sh
```

## Security Note

**Important**: This script executes commands without validation or sanitization. Only use it with trusted input in controlled environments. Do not expose this script to untrusted users or accept user input without proper validation.