#!/bin/bash

. ./qn_init.sh

shellrc_prior=(~/".zshrc" ~/".bashrc")

line="
export QN_DATA_DIR=$(pwd)/data
PATH=\$PATH:$(pwd)/src
"

for rc in "${shellrc_prior[@]}"; do
  if [ -f ${rc} ]; then

    if grep -q "QN_DATA_DIR" $rc ; then
      echo "Already installed for ${rc}"
      break
    fi

    echo "$line" >> $rc
    echo "Append $rc:
    $line"

    break
  fi
done

