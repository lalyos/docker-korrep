#!/bin/bash

if [[ $# -lt 1 ]]; then
  echo please specify URL. optionally use ENCODING env var to set input (def: UTF8)
  exit 1
fi
curl -sL $1 | html2text -from_encoding ${ENCODING:-UTF8}  -o -