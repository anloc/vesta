#!/bin/bash
# New sudoers format

if [ ! -e '/etc/sudoers.d/gosweb' ]; then
    if [ ! -d '/etc/sudoers.d' ]; then
        mkdir /etc/sudoers.d
        chmod 750 /etc/sudoers.d
    fi
    echo '# Created by vesta update-trigger' > /etc/sudoers.d/gosweb
    echo 'Defaults env_keep="VESTA"' >> /etc/sudoers.d/gosweb
    echo 'Defaults:gosweb !syslog' >> /etc/sudoers.d/gosweb
    echo 'Defaults:gosweb !requiretty' >> /etc/sudoers.d/gosweb
    echo 'Defaults:root !requiretty' >> /etc/sudoers.d/gosweb
    echo '' >> /etc/sudoers.d/gosweb
    echo 'gosweb   ALL=(ALL)       ALL' >> /etc/sudoers.d/gosweb
    echo 'gosweb   ALL=NOPASSWD:/usr/local/vesta/bin/*' >> /etc/sudoers.d/gosweb
    chmod 440 /etc/sudoers.d/gosweb

    if [ -z "$(grep /etc/sudoers.d /etc/sudoers)" ]; then
        echo -e "\n#includedir /etc/sudoers.d" >> /etc/sudoers
    fi
fi
