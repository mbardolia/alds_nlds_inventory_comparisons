#!/bin/bash

source=extract_ids.txt
sleep=1
store=tp_data
mkdir -p $store

for id in `ggrep -P '\d+' $source`; do
  url="https://api.tickpick.com/1.0/listings/internal/event/${id}/"
  wget $url
  mv index.html "$store/$id.json"
  sleep $sleep
done

