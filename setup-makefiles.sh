#!/bin/sh

set -e

export VENDOR=motorola
export DEVICE=obake
./../../$VENDOR/msm8960dt-common/setup-makefiles.sh $@
