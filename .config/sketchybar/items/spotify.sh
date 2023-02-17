SPOTIFY_EVENT="com.spotify.client.PlaybackStateChanged"
POPUP_SCRIPT="sketchybar -m --set \$NAME popup.drawing=toggle"

sketchybar --add       event           spotify_change $SPOTIFY_EVENT      \
           --add       item            spotify.name right                 \
           --set       spotify.name    click_script="$POPUP_SCRIPT"       \
                                       popup.horizontal=on                \
                                       popup.align=center                 \
                                       label.padding_left=12              \
                                       icon.drawing=off                   \
                                                                          \
           --add       item            spotify.play popup.spotify.name    \
           --set       spotify.play    icon.padding_left=5                \
                                       icon.padding_right=5               \
                                       icon.drawing=off                   \
                                       updates=on                         \
                                       label.drawing=off                  \
                                       script="$PLUGIN_DIR/spotify.sh"    \
           --subscribe spotify.play    mouse.clicked spotify_change       \
