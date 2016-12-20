nohup osascript -e '
repeat
  set delay_min to (random number from 1 to 6)
  set delay_min to delay_min * 5 * 60

  set startTime to current date
  do shell script "sleep " & delay_min

  set sound_list to {"afplay ~/../../../System/Library/Sounds/Funk.aiff", "afplay ~/../../../System/Library/Sounds/Basso.aiff", "afplay ~/../../../System/Library/Sounds/Funk.aiff"}
  set sound_file to some item of sound_list

  set r to random number from 1 to 2
  repeat r times
    do shell script sound_file
  end repeat
end repeat
' &
