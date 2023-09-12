--Code por Nickobelit
function onCreate()
    makeLuaSprite('vignette', 'shadow', 0,0);
	scaleObject('vignette', 1,1);
	setObjectCamera('vignette','other');
	addLuaSprite('vignette', false);
	setProperty('vignette.alpha',0)
end

hola = true
adios = false

function onEvent(name,value1,value2)
if name == 'Make Vignette' then
if hola == true then
doTweenAlpha('holaVignette', 'vignette', 1, 0.5, 'linear')
end
if adios == true then
doTweenAlpha('adiosVignette', 'vignette', 0, 0.2, 'linear')
end
end
end

function onTweenCompleted(tag)
if tag == 'holaVignette' then
hola = false
adios = true
end

if tag == 'adiosVignette' then
hola = true
adios = false
end
end