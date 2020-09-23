#!/bin/bash

if [ -e "/etc/sudoers.d/gosweb" ]; then
    sed -i "s/gosweb.*ALL=(ALL).*/# sudo is limited to vesta scripts/" \
        /etc/sudoers.d/gosweb
fi

sed -i "s/%gosweb.*ALL=(ALL).*/# sudo is limited to vesta scripts/" /etc/sudoers
