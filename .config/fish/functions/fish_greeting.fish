function fish_greeting
    fastfetch	
    set randhello (random choice "Hello" "Hi" "Howdy" "Shalom" "G'day")
    echo $randhello (set_color magenta)Omer(set_color --reset)!    
    echo The time is (set_color green)(date +%H:%M)(set_color --reset) and it is currently (set_color blue)(curl -s wttr.in/TelAviv?format="%t") (set_color --reset)outside. 
    set currentdate (date +%s)
    set summerdate (date --date="20260620" +%s)
    set sub 86400
    set diff (math "$summerdate - $currentdate")
    set daysleft (math --scale=0 "$diff/$sub")
    echo There are (set_color yellow)$daysleft(set_color --reset) days left until summer break!(set_color --reset)
    echo " "
end
