#!/bin/bash

# install h5ai
echo Installing h5ai
wget -qO h5ai.zip http://git.io/vEMGv
unzip -qo h5ai.zip -d ~/www/$(whoami).$(hostname -f)/public_html/
rm h5ai.zip

# copy h5ai configs
echo Copying h5ai configs
cp -r _h5ai/. ~/www/$(whoami).$(hostname -f)/public_html/_h5ai/

# symlink rtorrent data
echo Creating symbolic link to rtorrent data
ln -sf ~/private/rtorrent/data ~/www/$(whoami).$(hostname -f)/public_html/links/rtorrent

# set home directory path in nginx links config
echo Setting home directory path in nginx links config
sed -i "s|{{ HOME }}|$HOME|g" .nginx/conf.d/000-default-server.d/links.conf

# copy nginx configs
echo Copying nginx configs
cp -r .nginx/. ~/.nginx

echo Done!
