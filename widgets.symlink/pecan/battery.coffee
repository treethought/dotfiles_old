command: "bash pecan/scripts/battery"
# command: "bash pecan/scripts/mpd"


refreshFrequency: 60000 # ms

render: (output) ->
  "<div class='screen'><div class='pecanbattery'>#{output}</div></div>"
