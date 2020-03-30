#!/usr/bin/env sh


# Terminate already running instances
killall -q dropbox joplin spotifyd


# Wait until the processes have been shut down
while pgrep -x spotifyd >/dev/null; do sleep 1; done
/usr/local/bin/spotifyd 

while pgrep -x joplin >/dev/null; do sleep 1; done
~/.joplin/Joplin.AppImage


while pgrep -x dropbox >/dev/null; do sleep 1; done
~/.dropbox-dist/dropboxd
