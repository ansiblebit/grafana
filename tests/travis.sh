#!/bin/bash

test $USER = 'travis' \
    && ansible-playbook \
        -i localhost, \
        --connection=local test.yml \
        -e vagrant_box=localhost \
        -e env=travis \
        --skip-tags=test \
        $@ \
    && bash test_checkmode.sh \
        --env travis \
    && bash test_idempotence.sh \
        --env travis
