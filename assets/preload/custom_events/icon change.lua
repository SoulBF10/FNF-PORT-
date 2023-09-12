function onEvent(n, v1, v2)--El otro code no era para 0.5.2 Lexed xd
if n == 'icon change' and v2 == 'black' then
triggerEvent('Change Character','dad','whitedkBlack')
if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
setProperty('iconP2.y', 550);   
else
setProperty('iconP2.y', -5);   
end
end
if n == 'icon change' and v2 == 'white' then
triggerEvent('Change Character','dad','whitedk')
if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
setProperty('iconP2.y', 565);   
else
setProperty('iconP2.y', 0);   
end
end
if n == 'icon change' and v2 == 'both' then
triggerEvent('Change Character','dad','whitedkBoth')
if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
setProperty('iconP2.y', 550);   
else
setProperty('iconP2.y', -10);   
end
end
end