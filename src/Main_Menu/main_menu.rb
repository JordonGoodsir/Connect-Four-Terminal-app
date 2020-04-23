require "colorize" 
require "tty-prompt" 
require_relative "user_creation.rb" 

prompt = TTY::Prompt.new 


# title_array1 = [
#                                 "      ██████  ██████  ███    ██ ███    ██ ███████  ██████ ████████       ",    
#                                 "    ██       ██    ██ ████   ██ ████   ██ ██      ██         ██      ",   
#                                 "    ██       ██    ██ ██ ██  ██ ██ ██  ██ █████   ██         ██     ",   
#                                 "    ██       ██    ██ ██  ██ ██ ██  ██ ██ ██      ██         ██      ", 
#                                 "     ██████   ██████  ██   ████ ██   ████ ███████  ██████    ██  "      
#                                       ]
# title_array1.map {|v| puts v.red} 
# sleep 0.7
#                             title_array2 = [ 
#                                 "                 ███████  ██████  ██    ██ ██████             ",
#                                 "                 ██      ██    ██ ██    ██ ██   ██             ",
#                                 "                 █████   ██    ██ ██    ██ ██████            ",
#                                 "                 ██      ██    ██ ██    ██ ██   ██            ",
#                                 "                 ██       ██████   ██████  ██   ██         "]
                            
# title_array2.each {|v| puts v.yellow}  
# sleep 0.5 


# puts




choices = prompt.select("Welcome, what would you like to do?".center(68)) do |menu| 
    menu.choice "Play", 1 
    menu.choice "Tutorial", 2
    menu.choice "Quit", 3 

end

case choices 
when 1
    system("clear")
    name_get 

when 2  
    system("clear")
   #tutorial not done yet 

when 3 
system"clear" 
puts "Thanks for playing :)" 
exit
end   







                                                                                                          
                                      
                                                                                                              


# puts "Would you like to play connect four? (yes or no)" 
# play = gets.chomp.downcase  

# if play != "yes" 
#     exit 
# end 

# puts "Player 1 whats your game name?"
# $player1_name = gets.chomp 

# puts "Player 2 whats your game name?"
# $player2_name = gets.chomp

# menu_choice = prompt.select("Main Menu") do |menu|
#     menu.enum "."
#     menu.choice "View Rules", 1
#     menu.choice "View High Scores", 2
#     menu.choice "Start New Game", 3
#     menu.choice "Exit", 4
#   end
 