pio.pin.setdir(pio.OUTPUT, pio.GPIO2);
function ledon()
    pio.pin.sethigh(pio.GPIO2)
  end
  
  function ledoff()
    pio.pin.setlow(pio.GPIO2)
  end

function wheelRGB(pos) -- pos entre 0 et 255 (angle entre O et 255)
    pos = 255 - pos
    if (pos < 85) then
    return 255 - pos * 3, 0, pos * 3
    elseif (pos < 170) then
    pos = pos- 85
    return 0, pos * 3, 255 - pos * 3 
    else
    pos = pos- 170
    return pos * 3, 255 - pos * 3,0
    end
end