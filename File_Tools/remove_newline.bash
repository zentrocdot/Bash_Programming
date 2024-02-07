#!/usr/bin/bash
#
# Remove Newlines
# Version 0.0.0.1
# Copyright © 2024, Dr. Peter Netz
# Published under the MIT license.
#
# [:space:]
# tab, vertical tab, form feed, newline, line feed, carriage return and space
# [:blank:]
# tab and space
#
# See also:
# www.gnu.org/software/sed/manual/sed.html
# www.regular-expressions.info/posixbrackets.html

# Assign the command line argument to the global variable.
FN=$1

# Check if filename was given.
if [ "${FN}" = '' ]; then
    echo "No filename given. Bye!"
    exit 1
fi

# Remove multiple spaces from file.
sed -i ':x;N;$!bx;s/[\r\n]/ /g' "${FN}" 2> /dev/null

# Exit script.
exit 0