repeat
	set delay_seconds to (random number from 30 to 60)
	set startTime to current date
	do shell script "sleep " & delay_seconds
	set sound_list to {"afplay ~/../../../System/Library/Sounds/Funk.aiff", "afplay ~/../../../System/Library/Sounds/Basso.aiff", "afplay ~/../../../System/Library/Sounds/Glass.aiff", "afplay ~/../../../System/Library/Sounds/Morse.aiff"}
	set sound_file to some item of sound_list
	set r to random number from 1 to 2
	repeat r times
		set volume_value to (random number from 70 to 100)
		set volume output volume volume_value --100%
		do shell script sound_file
	end repeat
end repeat
