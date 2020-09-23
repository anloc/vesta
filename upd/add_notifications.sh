#!/bin/bash
# Add notifications

rm -f /usr/local/vesta/data/users/gosweb/notifications.conf
/usr/local/vesta/bin/v-add-user-notification gosweb "File Manager" "Browse, copy, edit, view, and retrieve all your web domain files using a fully featured <a href='http://vestacp.com/features/#filemanager'>File Manager</a>. Plugin is available for <a href='/edit/server/?lead=filemanager#module-filemanager'>purchase</a>." 'filemanager'
/usr/local/vesta/bin/v-add-user-notification gosweb "Chroot SFTP" "If you want to have SFTP accounts that will be used only to transfer files (and not to SSH), you can  <a href='/edit/server/?lead=sftp#module-sftp'>purchase</a> and enable <a href='http://vestacp.com/features/#sftpchroot'>SFTP Chroot</a>"
/usr/local/vesta/bin/v-add-user-notification gosweb "Softaculous" "Softaculous is one of the best Auto Installers and it is finally <a href='/edit/server/?lead=sftp#module-softaculous'>available</a>"
/usr/local/vesta/bin/v-add-user-notification gosweb "Release 0.9.8-26" "This release adds support for Lets Encrypt HTTP/2. For more information please read <a href='http://vestacp.com/history/#0.9.8-26'>release notes</a>"
