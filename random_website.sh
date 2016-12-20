nohup osascript -e '
repeat
  set delay_min to (random number from 1 to 6)
  set delay_min to delay_min * 5 * 60

  do shell script "sleep " & delay_min

  set url_list to {"https://www.youtube.com/watch?v=dQw4w9WgXcQ", "https://www.youtube.com/watch?v=dQw4w9WgXcQ"}
  set r_url to some item of url_list

  open location r_url
end repeat
' &
