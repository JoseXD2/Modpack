function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'KNIFE_NOTES' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'KNIFENOTE_assets'); --Change texture

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
			
			end
		end
	end
	--debugPrint('Script started!')
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false

function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'KNIFE_NOTES' then
		playSound('knife', 1);
		characterPlayAnim('boyfriend', 'dodge', true);
		setProperty('boyfriend.specialAnim', true);
    end
end


function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == "KNIFE_NOTES" then
		setProperty('health', -500);
		playsound('knife', 1.5)
	end
end