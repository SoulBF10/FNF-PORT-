local changedNotes = 0
local strumLineChanged = false

local textureString = ''

function onCreatePost()
    for eventNotes = 0,getProperty('eventNotes.length') do
        if getPropertyFromGroup('eventNotes',eventNotes,'event') == 'changeNoteTexture' then
            precacheImage(getPropertyFromGroup('eventNotes',eventNotes,'value1'))
        end
    end
end
function onEvent(name,v1,v2)
    if name == 'changeNoteTexture' then
        if v1 ~= nil and v1 ~= '' then
            textureString = v1
            changedNotes = 2
            if v2 == 'true' and strumLineChanged == false then
                for strumLineNotes = 0,7 do
                    setPropertyFromGroup('strumLineNotes', strumLineNotes,'texture',v1)
                end
            elseif v2 ~= 'true' and strumLineChanged == true then
                for strumLineNotes = 0,7 do
                    setPropertyFromGroup('strumLineNotes', strumLineNotes,'texture','NOTE_assets')
                end
                strumLineChanged = false
            end
        else
            if changedNotes == 2 then
                changedNotes = 1
            end
            if strumLineChanged == true then
                for strumLineNotes = 0,7 do
                    setPropertyFromGroup('strumLineNotes', strumLineNotes,'texture','NOTE_assets')
                    strumLineChanged = false
                end
            end
        end
    end
end
function onUpdate()

    if changedNotes == 2 then
        for noteslength = 0,getProperty('notes.length')-1 do
            setPropertyFromGroup('notes', noteslength,'texture',textureString)
        end
    elseif changedNotes == 1 then
        for noteslength = 0,getProperty('notes.length')-1 do
            setPropertyFromGroup('notes', noteslength,'texture','')
        end
        changedNotes = 0
    end
end