#!/bin/bash

if [[ $# -lt 1 ]]; then
  echo please specify URL
  exit 1
fi
curl -L $1 | html2text