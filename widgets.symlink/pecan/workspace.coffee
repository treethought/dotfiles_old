command: "bash pecan/scripts/ws"

refreshFrequency: 1000 # ms

render: (output) ->
  return @trimWindowName(output)
  # "<div class='screen'><div class='pecanworkspace'>#{output}</div></div>"



trimWindowName: (path) ->

    file = ""
    wins = path
    win = ""
    winseg = wins.split('/')
    file = winseg[winseg.length - 1]
    j = winseg.length - 1
    flag1 = 0
    flag2 = 0

    while file.length >=65
        file = file.slice(0, -1)
        flag1 = 1

    if j > 1
        while j >= 1
            j -= 1
            if (win + file).length >= 65
                win = ' …/' + win
                break
            else
                win = winseg[j] + '/' + win

    while win.length >=65
        win = win.slice(1)
        flag2 = 1

    if flag1 >= 1
        file = file + '…'

    if flag2 >= 1
        win = '…' + win

    if path == ""
        win = "<span class='white'>…</span>"

    return "<div class='screen'><div class='pecanworkspace'>#{win} #{file}</div></div>"


