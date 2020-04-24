require 'tty-prompt'
require 'user_creation'

def victory 
who = TTY::Prompt.new 
system("clear") 
# puts "So who won?"   
players = ["#{player1_name}", "#{player2_name}"]
who_won = who.select("who won?", players)

case who_won 
when "Player1" 
puts "hi" 

when "Player2" 
puts "bye"
end  
end

victory