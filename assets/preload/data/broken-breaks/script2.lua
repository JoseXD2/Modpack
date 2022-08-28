function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'boyfriendSURVIVOR'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'bfDeath'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'death'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'deathEnd'); --put in mods/music/
end