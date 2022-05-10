delay = 100

keylist = {
    {x=16660, y=30418},
    {x=16612, y=36057},
    {x=16660, y=41611},
    {x=20501, y=48275},
    {x=23573, y=48105},
    {x=26934, y=48190},
}

pos_list = {1, 4, 5, 6}
pos_count = 4
i = 1
max_i = 0;
actions = {}

function buildActions(count, current)
    for j = 1, 10, 1 do
        max_i = max_i + 1
        actions[max_i] = keylist[pos_list[current]]
        if current < count then
            buildActions(count, current + 1)
        end
    end
end
buildActions(pos_count, 1)

function OnEvent(event, arg)
    --OutputLogMessage("Event: "..event.." Arg: "..arg.."\n")
    if IsMouseButtonPressed(5) then
        repeat
            MoveMouseTo(actions[i].x, actions[i].y)
            PressAndReleaseMouseButton(1)
            i = i + 1
            if i > max_i then i = 1 end
            Sleep(delay)
        until not IsMouseButtonPressed(5)
    end
end
