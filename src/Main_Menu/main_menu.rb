def main_menu 
system("clear") 

prompt = TTY::Prompt.new

title_array1 = [
                                "      ██████  ██████  ███    ██ ███    ██ ███████  ██████ ████████       ",    
                                "    ██       ██    ██ ████   ██ ████   ██ ██      ██         ██      ",   
                                "    ██       ██    ██ ██ ██  ██ ██ ██  ██ █████   ██         ██     ",   
                                "    ██       ██    ██ ██  ██ ██ ██  ██ ██ ██      ██         ██      ", 
                                "     ██████   ██████  ██   ████ ██   ████ ███████  ██████    ██  "      
                                      ]
title_array1.map {|v| puts v.red} 
sleep 0.7
                            title_array2 = [ 
                                "                 ███████  ██████  ██    ██ ██████             ",
                                "                 ██      ██    ██ ██    ██ ██   ██             ",
                                "                 █████   ██    ██ ██    ██ ██████            ",
                                "                 ██      ██    ██ ██    ██ ██   ██            ",
                                "                 ██       ██████   ██████  ██   ██         "]
                            
title_array2.each {|v| puts v.yellow}  
sleep 0.5 


puts


choices = prompt.select("Welcome, what would you like to do?".rjust(51)) do |menu| 
    menu.choice "Play".center(65), 1 
    menu.choice "Tutorial".center(65), 2
    menu.choice "Quit".center(65), 3 

end

case choices 
when 1
    system("clear")
    name_get 
    system("clear") 
    game = Game.new($board) 

when 2  
    system("clear")
    tutorial 

when 3 
system"clear" 
#good bye message
t = Artii::Base.new 
f = Artii::Base.new 
pl = Artii::Base.new 

puts t.asciify("Thanks").red 
puts f.asciify(" For")
puts pl.asciify(" Playing !").yellow
exit

end   

end  


def start_game 
    if ARGV[0] == "play"  
    system("clear") 
    $player1_name = "Player1"
    $player2_name = "Player2"
    game = Game.new($board) 

    elsif ARGV[0] == "tutorial" 
    system("clear")
    tutorial 
    
    else 
        main_menu 
    end 
end 