#!/bin/sh
#######################################################################
T_SH_NAME='grep_list.sh'                                 # 2023_06_05 #
#######################################################################

[[   -z "$1" ]] && { echo -e "\n\e[1;91m[ERROR]\e[0m NO_PATTERNS_FILE "; exit 1; } || T_PATTERNS_FILE=$1
[[ ! -f $T_PATTERNS_FILE ]] && { echo "$T_PATTERNS_FILE missing! :(" ; exit 1; }
shift
[[   -z "$1" ]] && { echo -e "\n\e[1;91m[ERROR]\e[0m NO_MAIN_FILE"; exit 1; } || T_MAIN_FILE=$1
[[ ! -f $T_MAIN_FILE ]] && { echo "$T_MAIN_FILE missing! :(" ; exit 1; }

T__LINE='N/A'
T_LI='1' # INCREMENT
T_LC='0' # COUNTER

while IFS= read -r T_LINE || [ -n "$T_LINE" ]
do
[[   ${#T_LINE} -lt 1  ]] && continue
T_LC=$((  T_LC +  T_LI ))
grep -Eq $T_LINE  $T_MAIN_FILE
T_RESULT=$?
if [ $T_RESULT -eq 0 ]
then
  echo "${T_LC}: $T_LINE FOUND"
else
  echo "${T_LC}: $T_LINE NOT_FOUND"  
fi
done < "$T_PATTERNS_FILE"



