lyricNumber = 0
lyricIcon = 0
--hey im skyan i made this please credit me if you use my script please thank you :3
iconOffsetX = 119
lyricOffsetY = 110

function onCountdownStarted()
	if songName == 'Blockbreaker' then
		textFont = 'minecraftRegular.ttf'
		lyricSize = 30
	elseif songName == 'Rolebreaker' then
		textFont = 'impostor.ttf'
		lyricSize = 45
	else
		textFont = 'pixelcomicsans.ttf'
		lyricSize = 36
	end
end

--edit this to change the text font
function onEvent(name, value1, value2)
    if name == 'Lyrics_OP' then
		if value1 == '' then
			doTweenAlpha('clearLyrics','lyricInstance'..lyricNumber,0,0.5,'linear')
			doTweenAlpha('clearLyrics2','lyricInstance'..lyricNumber2,0,0.5,'linear')
			doTweenAlpha('clearLyrics3','lyricInstance'..lyricNumber3,0,0.5,'linear')
			doTweenAlpha('clearLyrics4','lyricInstance'..lyricNumber4,0,0.5,'linear')
		else
			lyricNumber = lyricNumber + 1
			lyricNumber2 = lyricNumber -1
			lyricNumber3 = lyricNumber -2
			lyricNumber4 = lyricNumber -3
			--lyrics
			makeLuaText('lyricInstance'..lyricNumber, '', screenWidth, 0, 450+lyricOffsetY)
			addLuaText('lyricInstance'..lyricNumber)
			setTextSize('lyricInstance'..lyricNumber, lyricSize)
			setTextString('lyricInstance'..lyricNumber, value1)
			setTextColor('lyricInstance'..lyricNumber, getIconColor('dad'))
			setTextFont('lyricInstance'..lyricNumber, textFont)
			doTweenColor('lyricInstance'..lyricNumber..'color', 'lyricInstance'..lyricNumber, 'ffffff', 0.5, 'QuadOut')
			doTweenY('lyricInstance'..lyricNumber, 'lyricInstance'..lyricNumber, 500+lyricOffsetY, 0.5, 'QuadOut')
			doTweenY('lyricInstance'..lyricNumber2, 'lyricInstance'..lyricNumber2, 460+lyricOffsetY, 0.5, 'QuadOut')
			doTweenY('lyricInstance'..lyricNumber3, 'lyricInstance'..lyricNumber3, 420+lyricOffsetY, 0.5, 'QuadOut')
			setProperty('lyricInstance'..lyricNumber2 .. '.alpha', 0.5)
			setProperty('lyricInstance'..lyricNumber3 .. '.alpha', 0.25)
			setProperty('lyricInstance'..lyricNumber4 .. '.visible', false)
		end
		--icon
		if value2 == '' then
			doTweenAlpha('clearIcons','iconInstance'..lyricIcon,0,0.5,'linear')
			doTweenAlpha('clearIcons2','iconInstance'..lyricIcon2,0,0.5,'linear')
			doTweenAlpha('clearIcons3','iconInstance'..lyricIcon3,0,0.5,'linear')
			doTweenAlpha('clearIcons4','iconInstance'..lyricIcon4,0,0.5,'linear')
		else
			lyricIcon = lyricIcon + 1
			lyricIcon2 = lyricIcon -1
			lyricIcon3 = lyricIcon -2
			lyricIcon4 = lyricIcon -3
			makeLuaSprite('iconInstance'..lyricIcon, 'lyrics/'..value2, screenWidth/2-300-iconOffsetX, 500+lyricOffsetY);
			setObjectCamera('iconInstance'..lyricIcon, 'camHUD')
			scaleObject ('iconInstance'..lyricIcon, 0.8, 0.8)
			addLuaSprite('iconInstance'..lyricIcon, true);
			doTweenY('iconInstance'..lyricIcon, 'iconInstance'..lyricIcon, 450+lyricOffsetY, 0.5, 'QuadOut')
			doTweenY('iconInstance'..lyricIcon2, 'iconInstance'..lyricIcon2, 410+lyricOffsetY, 0.5, 'QuadOut')
			doTweenY('iconInstance'..lyricIcon3, 'iconInstance'..lyricIcon3, 370+lyricOffsetY, 0.5, 'QuadOut')
			setProperty('iconInstance'..lyricIcon2 .. '.alpha', 0.5)
			setProperty('iconInstance'..lyricIcon3 .. '.alpha', 0.25)
			setProperty('iconInstance'..lyricIcon4 .. '.visible', false)
		end

	elseif name == 'Lyrics_BF' then
		if value1 == '' then
			doTweenAlpha('clearLyrics','lyricInstance'..lyricNumber,0,0.5,'linear')
			doTweenAlpha('clearLyrics2','lyricInstance'..lyricNumber2,0,0.5,'linear')
			doTweenAlpha('clearLyrics3','lyricInstance'..lyricNumber3,0,0.5,'linear')
			doTweenAlpha('clearLyrics4','lyricInstance'..lyricNumber4,0,0.5,'linear')
		else
			lyricNumber = lyricNumber + 1
			lyricNumber2 = lyricNumber -1
			lyricNumber3 = lyricNumber -2
			lyricNumber4 = lyricNumber -3
			--lyrics
			makeLuaText('lyricInstance'..lyricNumber, '', screenWidth, 0, 550+lyricOffsetY)
			addLuaText('lyricInstance'..lyricNumber)
			setTextSize('lyricInstance'..lyricNumber, lyricSize)
			setTextString('lyricInstance'..lyricNumber, value1)
			setTextColor('lyricInstance'..lyricNumber, getIconColor('boyfriend'))
			setTextFont('lyricInstance'..lyricNumber, textFont)
			doTweenColor('lyricInstance'..lyricNumber..'color', 'lyricInstance'..lyricNumber, 'ffffff', 0.5, 'QuadOut')
			doTweenY('lyricInstance'..lyricNumber, 'lyricInstance'..lyricNumber, 500+lyricOffsetY, 0.5, 'QuadOut')
			doTweenY('lyricInstance'..lyricNumber2, 'lyricInstance'..lyricNumber2, 460+lyricOffsetY, 0.5, 'QuadOut')
			doTweenY('lyricInstance'..lyricNumber3, 'lyricInstance'..lyricNumber3, 420+lyricOffsetY, 0.5, 'QuadOut')
			setProperty('lyricInstance'..lyricNumber2 .. '.alpha', 0.5)
			setProperty('lyricInstance'..lyricNumber3 .. '.alpha', 0.25)
			setProperty('lyricInstance'..lyricNumber4 .. '.visible', false)
		end
		--icon
		if value2 == '' then
			doTweenAlpha('clearIcons','iconInstance'..lyricIcon,0,0.5,'linear')
			doTweenAlpha('clearIcons2','iconInstance'..lyricIcon2,0,0.5,'linear')
			doTweenAlpha('clearIcons3','iconInstance'..lyricIcon3,0,0.5,'linear')
			doTweenAlpha('clearIcons4','iconInstance'..lyricIcon4,0,0.5,'linear')
		else
			lyricIcon = lyricIcon + 1
			lyricIcon2 = lyricIcon -1
			lyricIcon3 = lyricIcon -2
			lyricIcon4 = lyricIcon -3
			makeLuaSprite('iconInstance'..lyricIcon, 'lyrics/'..value2, screenWidth/2+200+iconOffsetX, 500+lyricOffsetY);
			setObjectCamera('iconInstance'..lyricIcon, 'camHUD')
			scaleObject ('iconInstance'..lyricIcon, 0.8, 0.8)
			setProperty('iconInstance'..lyricIcon..'.flipX', true)
			addLuaSprite('iconInstance'..lyricIcon, true);
			doTweenY('iconInstance'..lyricIcon, 'iconInstance'..lyricIcon, 450+lyricOffsetY, 0.5, 'QuadOut')
			doTweenY('iconInstance'..lyricIcon2, 'iconInstance'..lyricIcon2, 410+lyricOffsetY, 0.5, 'QuadOut')
			doTweenY('iconInstance'..lyricIcon3, 'iconInstance'..lyricIcon3, 370+lyricOffsetY, 0.5, 'QuadOut')
			setProperty('iconInstance'..lyricIcon2 .. '.alpha', 0.5)
			setProperty('iconInstance'..lyricIcon3 .. '.alpha', 0.25)
			setProperty('iconInstance'..lyricIcon4 .. '.visible', false)
		end
	end
end

function getIconColor(chr) return rgbToHex(getProperty(chr..".healthColorArray")) end
function rgbToHex(array) return string.format('%.2x%.2x%.2x', array[1], array[2], array[3]) end

function onTweenCompleted(name)

	if name == 'clearLyrics' then
		removeLuaText('lyricInstance'..lyricNumber)
		removeLuaText('lyricInstance'..lyricNumber2)
		removeLuaText('lyricInstance'..lyricNumber3)
		removeLuaText('lyricInstance'..lyricNumber4)
	end
	
	if name == 'clearIcon' then
		removeLuaSprite('iconInstance'..lyricIcon)
		removeLuaSprite('iconInstance'..lyricIcon2)
		removeLuaSprite('iconInstance'..lyricIcon3)
		removeLuaSprite('iconInstance'..lyricIcon4)
	end
	
end