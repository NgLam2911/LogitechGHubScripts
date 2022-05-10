delay = 1
mouse_key = 5
mouse_button = 1 --LEFT CLICK

function OnEvent(event, arg)
    if IsMouseButtonPressed(mouse_key) then
        repeat
            PressAndReleaseMouseButton(mouse_button)
            Sleep(delay)
        until not IsMouseButtonPressed(mouse_key)
    end
end
