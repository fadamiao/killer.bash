#!/bin/bash
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

	if [ -z "$PROCESSID" ]; then
		echo "Anyone to Kill"
		return 1
	fi

	kill -9 "$PROCESSID"
	if [ $? == 0 ]; then
		echo "Kill Confirmed"
		return 0
	else
		echo "Kill Denied"
		return 1
	fi
}
