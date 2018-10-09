#!/bin/bash

a=$(ls -l ~/Telegram_workdir/ | wc -l)
next=$((a+1)) 

if [ ! -d ~/Telegram_workdir/$next ]; then

echo "Created directory ~/Telegram_workdir/" .$next
mkdir ~/Telegram_workdir/$next

data="[Desktop Entry]\n
Version=1.0\n
Name=Telegram Desktop\n
Comment=Official desktop application for the Telegram messaging service\n
TryExec=/home/pc-user/src/tsetup.1.4.0/Telegram/Telegram\n
Exec=/home/pc-user/src/tsetup.1.4.0/Telegram/Telegram -many -workdir /home/pc-user/Telegram_workdir/$next \n
Icon=telegram\n
Terminal=false\n
StartupWMClass=TelegramDesktop\n
Type=Application\n
Categories=Network;InstantMessaging;Qt;\n
MimeType=x-scheme-handler/tg;\n
X-Desktop-File-Install-Version=0.23\n
Name[en_US]=tg_$next.desktop"

echo $data >  ~/Desktop/tg_$next.desktop 
chmod a+x  ~/Desktop/tg_$next.desktop
echo "press to start new Telegram"
#ls -la ~/Desktop/
sh ~/Desktop/tg_$next.desktop

fi






