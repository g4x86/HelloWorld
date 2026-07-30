#!/usr/bin/env -S python3
# Print distribution and OS names for UNIX-like systems


import sys
import platform


# Main workflow
def main() -> int:
    error_code = 0

    # Get OS name
    os_name = platform.system()

    try:
        # Get distribution name
        info = platform.freedesktop_os_release()
        dist_name = info.get("PRETTY_NAME")
        print(f"Hello world from {dist_name} {os_name}")
    except AttributeError:
        print("This script only works on UNIX-like systems", file=sys.stderr)
        error_code = 1

    return error_code


# Program entry
if __name__ == "__main__":
    sys.exit(main())
