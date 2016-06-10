#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

test -s ${DIR}/../requirements.yml \
    && ansible-galaxy install \
        --force \
        -r ${DIR}/../requirements.yml \
        --roles-path=${DIR}/dependencies \
    || true
