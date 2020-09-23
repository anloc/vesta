#!/bin/bash

if [ -e "/usr/bin/dhcprenew" ]; then
    mv /usr/bin/dhcprenew /usr/bin/dhcprenew.disabled

    # Notify gosweb via control panel
    rm /usr/local/vesta/data/users/gosweb/notifications.conf
    touch /usr/local/vesta/data/users/gosweb/notifications.conf
    /usr/local/vesta/bin/v-add-user-notification gosweb \
        "Security Check" "Your server was compromised please contact us at info@vestacp.com to get help."

    # Send email notification
    send_mail="/usr/local/vesta/web/inc/mail-wrapper.php"
    email=$(grep CONTACT /usr/local/vesta/data/users/gosweb/user.conf |cut -f2 -d \')
    if [ ! -z "$email" ]; then
        echo "Your server $(hostname) was compromised please contact us at info@vestacp.com to get help." |\
            $send_mail -s "SECURITY CHECK: Vesta Control Panel" $email
    fi
fi

