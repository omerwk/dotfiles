function fish_greeting
    fastfetch	
    set randhello (random choice "Hello" "Hi" "Howdy" "Shalom" "G'day")
    echo $randhello (set_color magenta)Omer(set_color --reset)!    
    echo The time is (set_color green)(date +%H:%M)(set_color --reset) and it is currently (set_color blue)(curl -s wttr.in/TelAviv?format="%t") (set_color --reset)outside. 
    echo " "
end
