#!/bin/bash
#
# Copyright (C) 2018-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

function blob_fixup() {
    case "${1}" in
        vendor/lib/lib_fpc_tac_shared.so|vendor/lib64/lib_fpc_tac_shared.so)
            "${PATCHELF}" --add-needed "libshims_binder.so" "${2}"
            ;;
    esac
}

# If we're being sourced by the common script that we called,
# stop right here. No need to go down the rabbit hole.
if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
    return
fi

set -e

# Required!
export DEVICE=ulysse
export DEVICE_COMMON=ulysse-common
export VENDOR=xiaomi

export DEVICE_BRINGUP_YEAR=2020

"./../../${VENDOR}/${DEVICE_COMMON}/extract-files.sh" "$@"
