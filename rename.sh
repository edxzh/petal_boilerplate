#!/bin/bash

set -euo pipefail

die () { echo "$1"; exit 1; }

if [ $# -lt 2 ] ; then
  die "Usage: `basename $0` {new_name} {new_opt_name}"
fi

NEW_NAME=$1
NEW_OTP=$2

if ! command -v ack &> /dev/null
then
    echo "\`ack\` could not be found. Please install it before continuing (Mac: brew install ack)."
    exit 1
fi

CURRENT_NAME="PetalBoilerplate"
CURRENT_OTP="petal_boilerplate"

ack -l $CURRENT_NAME --ignore-file=is:rename_phoenix_project.sh | xargs sed -i '' -e "s/$CURRENT_NAME/$NEW_NAME/g"
ack -l $CURRENT_OTP --ignore-file=is:rename_phoenix_project.sh | xargs sed -i '' -e "s/$CURRENT_OTP/$NEW_OTP/g"

git mv lib/$CURRENT_OTP lib/$NEW_OTP
git mv lib/$CURRENT_OTP.ex lib/$NEW_OTP.ex
git mv lib/${CURRENT_OTP}_web lib/${NEW_OTP}_web
git mv lib/${CURRENT_OTP}_web.ex lib/${NEW_OTP}_web.ex

# git mv test/$CURRENT_OTP test/$NEW_OTP

git mv test/${CURRENT_OTP}_web test/${NEW_OTP}_web
