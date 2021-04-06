#!/bin/bash

source ./_common.sh

function check_usage {
	if [ ! -n "${1}" ]
	then
		echo "Usage: ${0} <patching-tool major.minor version>"
		echo ""
		echo "This script requires the first parameter to be set to the major.minor version of Patching Tool (e.g. 2.0)"

		exit 1
	fi
}

function main {
	check_usage ${@}

	get_full_version ${@}
}

function get_full_version {
	if [ "${1}" == "2.0" ]
	then
		echo "2.0.15"
	elif [ "${1}" == "3.0" ]
	then
		echo "3.0.20"
	else
		echo "Unable to get full version for ${1}."

		exit 2
	fi
}

main ${@}