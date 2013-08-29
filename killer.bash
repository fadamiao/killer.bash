#!/bin/bash
# killer.bash - Script to do the function of pkill in Mac OS X 10.6 and 10.7.
# Author: Fernando A. Damião <me@fadamiao.com>
# Created At: 2012-10-24 18:24
# Last Update: 2013-08-29 13:27
# License: BSD 3-Clause License

function pkill()
{
    if [ $# -ne 1 ]; then
        echo "Syntax: pkill <ProcessName>"
        return 1
    fi

    if [ -z $1 ]; then
        echo "Syntax: pkill <ProcessName>"
        return 1
    fi

    PROCESSID=$(ps aux | grep "\<$1\>" | grep -v "grep" | grep -v "bash" | awk '{ print $2 }')

    if [ -z "${PROCESSID}" ]; then
        echo "Anyone to Kill"
        return 1
    fi

    kill -9 "${PROCESSID}"
    if [ $? == 0 ]; then
        echo "Kill Confirmed"
        return 0
    else
        echo "Kill Denied"
        return 1
    fi
}
