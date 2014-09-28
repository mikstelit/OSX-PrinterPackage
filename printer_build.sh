#!/bin/bash

target_printer=$(defaults read $PWD"/stagedfiles/PrinterConfig.plist" NAME)

rm ./${target_printer}.pkg

pkgbuild --root ./stagedfiles/ \
    --scripts ./scripts/ \
    --identifier com.example.${target_printer} \
    --version 1 \
    --install-location $(defaults read $PWD"/stagedfiles/PrinterConfig.plist" TEMP) \
    ./${target_printer}.pkg
