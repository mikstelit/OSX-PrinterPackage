#!/bin/bash

target_printer=`cat ./stagedfiles/printer.config | \
    grep NAME | cut -d"=" -f2`

rm ./${target_printer}.pkg

pkgbuild --root ./stagedfiles/ \
    --scripts ./scripts/ \
    --identifier com.example.${target_printer} \
    --version 1 \
    --install-location /tmp/Printer_Install \
    ./${target_printer}.pkg
