local hasSpawned = false
function onEvent(name, value1, value2)
	if name == 'badapplelol' and value1 == 'a' and hasSpawned == false then
		makeLuaSprite('whitebg', '', -600, -260)
		setScrollFactor('whitebg', 0, 0)
		makeGraphic('whitebg', 5000, 5000, 'ffffff')
		addLuaSprite('whitebg', false)
		setProperty('whitebg.alpha', 0)
		doTweenAlpha('applebadxd69', 'whitebg', 1, value2, 'linear')
		doTweenColor('badapplexd', 'boyfriend', '000000', value2, 'linear')
		doTweenColor('badapplexd1', 'dad', '000000', value2, 'linear')
		doTweenColor('badapplexd2', 'gf', '000000', value2, 'linear')
		doTweenAlpha('badapplexd3', 'healthBar', '0', value2, 'linear')
		doTweenAlpha('badapplexd4', 'healthBarBG', '0', value2, 'linear')
		doTweenAlpha('badapplexd5', 'iconP1', '0', value2, 'linear')
		doTweenAlpha('badapplexd6', 'iconP2', '0', value2, 'linear')
		doTweenAlpha('badapplexd7', 'scoreTxt', '0', value2, 'linear')
		hasSpawned = true
	end
	if name == 'badapplelol' and value1 == 'a' and hasSpawned == true then
		doTweenAlpha('applebadxd69', 'whitebg', 1, value2, 'linear')
		doTweenColor('badapplexd', 'boyfriend', '000000', value2, 'linear')
		doTweenColor('badapplexd1', 'dad', '000000', value2, 'linear')
		doTweenColor('badapplexd2', 'gf', '000000', value2, 'linear')
		doTweenAlpha('badapplexd3', 'healthBar', '0', value2, 'linear')
		doTweenAlpha('badapplexd4', 'healthBarBG', '0', value2, 'linear')
		doTweenAlpha('badapplexd5', 'iconP1', '0', value2, 'linear')
		doTweenAlpha('badapplexd6', 'iconP2', '0', value2, 'linear')
		doTweenAlpha('badapplexd7', 'scoreTxt', '0', value2, 'linear')
	end
	if name == 'badapplelol' and value1 == 'b' then
		doTweenAlpha('applebadxd', 'whitebg', 0, value2, 'linear')
		doTweenColor('badapplexd8', 'boyfriend', 'FFFFFF', value2, 'linear')
		doTweenColor('badapplexd9', 'dad', 'FFFFFF', value2, 'linear')
		doTweenColor('badapplexd10', 'gf', 'FFFFFF', value2, 'linear')
		doTweenAlpha('badapplexd11', 'healthBar', '1', value2, 'linear')
		doTweenAlpha('badapplexd12', 'healthBarBG', '1', value2, 'linear')
		doTweenAlpha('badapplexd13', 'iconP1', '1', value2, 'linear')
		doTweenAlpha('badapplexd14', 'iconP2', '1', value2, 'linear')
		doTweenAlpha('badapplexd15', 'scoreTxt', '1', value2, 'linear')
	end
end