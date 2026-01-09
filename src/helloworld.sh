#!/usr/bin/env -S bash
# This script only works in UNIX-like systems e.g. Mac and Linux

# Get UNIX-like OS name.
OS_NAME="$(uname -s | tr [:upper:] [:lower:])"
DIST_DESCR="$(lsb_release -d | cut -d: -f 2 | sed 's/^[ \t]*//;s/[ \t]*$//')"

# Display a message.
echo "Hello world from ${DIST_DESCR} ${OS_NAME}"

# Exit with a code.
exit 0
