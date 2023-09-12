local splashCount = 0;

local splashThing = nil;

local sickTrack = -1;

local textureSplash = 'pixelUI/noteSplashes';

local defaultSplashX = 70
local defaultSplashY = 35

local splashVelocity = 24
local splashAlpha = 1
local splashesDestroyed = 0

local splashAnims = {'Purple Splash 1','Blue Splash 1','Green Splash 1','Red Splash 1'}

function onCreatePost()
   if getPropertyFromClass('PlayState','isPixelStage') == true then
   enableNewSystem = 2
   else
   enableNewSystem = 0
   end
   
	if enableNewSystem == 2 and getPropertyFromClass('PlayState','isPixelStage') == true then
		precacheImage(textureSplash)
		makeAnimatedLuaSprite('noteSplashpChache',textureSplash, 100, 100);
		addLuaSprite('noteSplashpChache',false);
		setProperty('noteSplashpChache.visible',false)
	end
end

sus = false
function goodNoteHit(note, direction, type, sus)
	if sickTrack ~= getProperty('sicks') then
		if sus == false then
			if enableNewSystem == 2 and getPropertyFromClass('ClientPrefs','noteSplashes') == true and not sus and getPropertyFromClass('PlayState','isPixelStage') == true then
				spawnCustomSplash(note, direction, type,textureSplash);
			end
		end
		sickTrack = getProperty('sicks');
	end
end

function spawnCustomSplash(noteId, noteDirection, type,textureNote)
	splashThing = splashAnims[noteDirection + 1]
	splashCount  = splashCount + 1

	makeAnimatedLuaSprite('noteSplash'..splashCount, textureNote, getPropertyFromGroup('playerStrums', noteDirection, 'x'), getPropertyFromGroup('playerStrums', noteDirection, 'y'));
	addAnimationByPrefix('noteSplash'..splashCount, 'anim', splashThing, splashVelocity, false);
		setProperty('noteSplash' .. splashCount .. '.scale.x', 4);
		setProperty('noteSplash' .. splashCount .. '.scale.y', 4);
	setProperty('noteSplash' .. splashCount .. '.offset.x', -25);
	setProperty('noteSplash' .. splashCount .. '.offset.y', -25);

	setProperty('noteSplash' .. splashCount .. '.alpha', splashAlpha);
    setProperty('noteSplash' .. splashCount .. '.antialiasing', false);
	setObjectCamera('noteSplash'..splashCount, 'hud');
	setObjectOrder('noteSplash'..splashCount, 9999); -- this better make the splashes go in front-
	addLuaSprite('noteSplash'..splashCount,true);
end

function onUpdate()
	if enableNewSystem == 2 then
		if sickTrack ~= 0 then
			for splashes = splashesDestroyed, splashCount do
				if getProperty('noteSplash'..splashes..'.animation.curAnim.finished') then
					setProperty('noteSplash'..splashes..'.visible',false)
					removeLuaSprite('noteSplash'..splashes,true)
					splashesDestroyed = splashesDestroyed + 1
				end
			end
			for splashesDefault = 0,getProperty('grpNoteSplashes.length') do
				setPropertyFromGroup('grpNoteSplashes', splashesDefault,'visible',false)
			end
		end
	end
       if enableNewSystem == 0 then
                 for splashesDefault = 0,getProperty('grpNoteSplashes.length') do
				setPropertyFromGroup('grpNoteSplashes', splashesDefault,'visible',true)
			end
end
end

function backSplashArray()
	table.insert(splashAnims,1,'Purple Splash 1')
	table.insert(splashAnims,2,'Blue Splash 1')
	table.insert(splashAnims,3,'Green Splash 1')
	table.insert(splashAnims,4,'Red Splash 1')
end