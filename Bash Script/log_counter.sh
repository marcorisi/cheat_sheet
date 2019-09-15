#!/bin/bash

#############################################################################
# Check how many log files and log lines your web application write on disk #
#############################################################################

clear

# Define list of path (project path) where to check for log files
# E.g.:
# path_to_explore=("/nfs/laravel/project1/../storage/logs")
# path_to_explore+=("/nfs/laravel/project2/../storage/logs")

# Variable used for printing out stats about the script run
result_outcome="Files\t\tLines\t\tPath"

# The total numbers of rows written on log files
log_lines=0

# Prepare header table for the output
echo -e "Lines\t\tPath\t\tFile"

# Loop through each paths and count lines for every log files that is found.
# This will let us evaluate log volume on a project base.
for path in "${path_to_explore[@]}";
do

  # Move to path
  cd $path

  # Number of log files and log lines within this path
  path_log_files=0
  path_log_lines=0

  # Find .log files and count line numbers
  for i in $(find . -type f -name '*2019-08*.log' );
  do

    lines=$(cat $i | wc -l)
    (( path_log_files++ ))
    (( lines=lines+0 ))
    (( path_log_lines=path_log_lines+lines))
    (( log_lines=log_lines+lines ))

    # Print result according to header table specified above
    echo -e "$path_log_lines\t\t$path\t\t$i"

  done

  # Append to result outcome stats for this paths
  result_outcome+="\n$path_log_files\t\t$path_log_lines\t\t$path"

done

echo -e "\n\nOutcome:"
echo -e "$result_outcome"
echo "Total Lines: $log_lines"
