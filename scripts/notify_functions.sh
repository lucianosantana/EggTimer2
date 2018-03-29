notify () {

if [ "$5" = alarm ]; then
nc_icon="$PWD/resources/icon_alarm.icns"
else
nc_icon="$PWD/resources/icon.icns"
fi

osascript <<EOD
set img to POSIX file "$nc_icon"
display dialog "$3\n$4" with title "$1" with icon img buttons {"OK"}
EOD

}
