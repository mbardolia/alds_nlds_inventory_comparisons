#!/bin/bash

big=compare_data/tp.tsv
cat /dev/null > $big
for f in `ls tp_data/*.json`; do
  jq -r ' .[] | [.id, .sid, .r, .q, .p, .n, .Percentage] | @tsv ' $f >> $big
done


