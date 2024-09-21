#!/usr/bin/env -S bash
# This script only works in UNIX-like systems e.g. Mac and Linux

# Get UNIX-like OS name.
OS_NAME="$(uname -s | tr [:upper:] [:lower:])"

# Display a message.
echo "Hello World from ${OS_NAME}!"

# Exit with a code.
exit 0
