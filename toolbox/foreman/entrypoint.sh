#!/usr/bin/env bash

if [ -z "${FOREMAN_URL}" ]; then
    echo "FOREMAN_URL not set."
    exit 1
fi

if [ -z "${USERNAME}" ]; then
    echo "USERNAME not set."
    exit 1
fi

if [ -z "${PASSWORD}" ]; then
    echo "PASSWORD not set."
    exit 1
fi

sed -i "s@FOREMAN_URL@${FOREMAN_URL}@g" /etc/hammer/cli.modules.d/foreman.yml
sed -i "s@USERNAME@${USERNAME}@g" /etc/hammer/cli.modules.d/foreman.yml
sed -i "s@PASSWORD@${PASSWORD}@g" /etc/hammer/cli.modules.d/foreman.yml

/bin/bash
