
# includes the home function and other rather simple functions that dont need a new file

function home --description "Reset to 'home' terminal screen"
    clear
    cd $HOME
    fish_greeting
end


