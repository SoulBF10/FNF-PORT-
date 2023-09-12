--Create with TieGuo's Lua Stage Editor
function onCreate()
makeLuaSprite('ceuu', 'ceuu', -590, -180)
addLuaSprite('ceuu', false)
scaleObject('ceuu', 1, 1)
setScrollFactor('ceuu', 1, 1)
setProperty('ceuu.antialiasing', false)

makeLuaSprite('chaoo', 'chaoo', -590, -100)
addLuaSprite('chaoo', false)
scaleObject('chaoo', 1, 1)
setScrollFactor('chaoo', 1, 1)
setProperty('chaoo.antialiasing', false)

makeLuaSprite('soll', 'soll', -80, -170)
addLuaSprite('soll', false)
scaleObject('soll', 0.6, 0.6)
setScrollFactor('soll', 1, 1)
setProperty('soll.antialiasing', false)

makeLuaSprite('risco', 'risco', -590, -180)
addLuaSprite('risco', true)
scaleObject('risco', 1, 1)
setScrollFactor('risco', 1, 1)
setProperty('risco.antialiasing', false)
end