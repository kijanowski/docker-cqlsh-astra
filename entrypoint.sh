#!/bin/sh

echo "Downloading cqlsh"
wget $CQLSH_DOWNLOAD_URL -O cqlsh.tar.gz
tar zxf cqlsh.tar.gz

count=`ls -1 /astra/*.cql 2>/dev/null | wc -l`
if [ $count != 0 ]; then 
  echo "Found cql scripts; executing them..."
  for file in /astra/*.cql; do
    [ -e "$file" ] || continue
    echo "Executing $file"
    /cqlsh-astra/bin/cqlsh -b /astra/scb.zip -u token -p $ASTRA_TOKEN -f $file
  done
  echo "Done all scripts. Closing cqlsh."
  exit 0
fi

/cqlsh-astra/bin/cqlsh -b /astra/scb.zip -u token -p $ASTRA_TOKEN
