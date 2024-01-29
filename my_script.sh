#!/bin/bash

# Separate options and arguments
OPTIONS=$(getopt -o 'abc:d:' -l option1,option2 -- "$@")
if [ $? -ne 0 ]; then
  echo "getopt has failed. Please check your command line options."
  exit 1
fi
eval set -- "$OPTIONS"

# Initialize flags
FLAG_A=""
FLAG_B=""
FLAG_C=""
C_ARG=""
FLAG_D=""
D_ARG=""
FLAG_OPTION1=""
FLAG_OPTION2=""
ini1=""
ini2=""

# Set flags according to options
while true; do
  case "$1" in
    -a)
      FLAG_A=1
      shift
      ;;
    -b)
      FLAG_B=1
      shift
      ;;
    -c)
      FLAG_C=1
      C_ARG=$2
      shift 2
      ;;
    -d)
      FLAG_D=1
      D_ARG=$2
      shift 2
      ;;
    --option1)
      FLAG_OPTION1=1
      shift
      ;;
    --option2)
      FLAG_OPTION2=1
      shift
      ;;
    --)
      shift
      break
      ;;
  esac
done

# Get the directory where the script is stored
SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

# Remove .sh from the shell script filename and append .ini
INI_FILE="${SCRIPT_DIR}/$(basename "$0" .sh).ini"

# Check if the .ini file exists and is readable
if [ ! -f "$INI_FILE" ] || [ ! -r "$INI_FILE" ]; then
  echo "${INI_FILE} does not exist or is not readable. Please check the file path and permissions."
  exit 1
fi

# Load the .ini file
source "$INI_FILE"

# The first and second arguments excluding options
ARG1=$1
ARG2=$2

# Result of short options
echo "FLAG_A=${FLAG_A}"
echo "FLAG_B=${FLAG_B}"

# Result of short options with an argument
echo "FLAG_C=${FLAG_C}"
echo "C_ARG=${C_ARG}"
echo "FLAG_D=${FLAG_D}"
echo "D_ARG=${D_ARG}"

# Result of long options
echo "FLAG_OPTION1=${FLAG_OPTION1}"
echo "FLAG_OPTION2=${FLAG_OPTION2}"

# Result of arguments excluding options
echo "ARG1=${ARG1}"
echo "ARG2=${ARG2}"

# Result of ini
echo "ini1=${ini1}"
echo "ini2=${ini2}"
