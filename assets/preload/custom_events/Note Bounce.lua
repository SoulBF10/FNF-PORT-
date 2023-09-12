local cameraOffset = 100
iLoveTrampolining = ''

function onSongStart()
	if songName == 'Bedbreaker' then
		cameraOffset = 0
	else
		cameraOffset = -120
	end
end

function onEvent(name,value1,value2)
	if name == 'Note Bounce' then
		iLoveTrampolining = value1
		if value2 == '' then
			bounceMult = 1
		else
			bounceMult = tonumber(value2)
		end
	end
end
