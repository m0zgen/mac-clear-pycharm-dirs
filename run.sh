#!/bin/bash
# Author: Yevgeniy Goncharov aka xck, http://sys-adm.in

# Sys env / paths / etc
# ---------------------------------------------------------------------\

PATH=$PATH:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin
SCRIPT_PATH=$(cd `dirname "${BASH_SOURCE[0]}"` && pwd); cd $SCRIPT_PATH

# Vars
# ---------------------------------------------------------------------\

# One line from spaced line
IFS=$'\n'
# Catalogs list
CATALOG_LIST=$SCRIPT_PATH/file-list.txt

#  Acts

for catalog in $(cat ${CATALOG_LIST}); do
    echo "Searching catalog: $HOME/$catalog"
    rm -rf $HOME/$catalog/Py* 2> /dev/null
done

echo "Done."




