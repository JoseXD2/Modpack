function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'glitchNote' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'glitchNote'); --Change texture

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
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
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'glitchNote' then

		makeAnimatedLuaSprite('estatic', 'gu', 0, 0);
		doTweenColor('hello', 'estatic', 'FFFFFFFF', 0.5, 'quartIn');
		addAnimationByPrefix('estatic', 'idle', 'gu idle', 24, true)
		addLuaSprite('estatic', true);
		setObjectCamera('estatic', 'Other');
		scaleObject('estatic', 0.5, 0.520);
		runTimer('wait', 1);
		playSound('glitch', 0.3);
		function onTimerCompleted(tag, loops, loopsleft)
            if tag == 'wait' then
             removeLuaSprite("estatic", false)
            end
        end
	end
end