#!/bin/bash

D_R=`cd \`dirname $0\` ; pwd -P`

SOURCE_DIR="$D_R/../gentoo_machine_bootstrap/packer_cache/packages/"

if [ ! -d $SOURCE_DIR ]; then
  echo "Source directory does not exist: $SOURCE_DIR"
  exit 1
fi

rsync -av $SOURCE_DIR/ $D_R/packages/ || exit $?
git add packages/ || exit $?
