local keepScroll = false
function onCreate()
setProperty('camHUD.visible',false)
setProperty('notes.cameras',true)
setProperty('strumLineNotes.cameras',true)
setProperty('gf.alpha', 0)
-- setProperty('grpNoteSplashes.cameras',true) idk how to fix this, they bug out
setProperty('doof.cameras',true)

setPropertyFromClass('GameOverSubstate', 'characterName', 'defeatDeath'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'loss-defeat'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOverEmpty'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEndEmpty'); --put in mods/music/
	if getPropertyFromClass('ClientPrefs', 'middleScroll') == true then
		keepScroll = true;
	elseif getPropertyFromClass('ClientPrefs', 'middleScroll') == false then
		setPropertyFromClass('ClientPrefs', 'middleScroll', true);
	end
end

function onDestroy()
	if keepScroll == false then
		setPropertyFromClass('ClientPrefs', 'middleScroll', false);
	elseif keepScroll == true then
		keepScroll = false;
	end
end
