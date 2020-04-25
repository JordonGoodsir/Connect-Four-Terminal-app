
require_relative 'user_creation.rb'

def victory 
p1 = Artii::Base.new 
p1_bm = Artii::Base.new 
p2 = Artii::Base.new 
p2_bm = Artii::Base.new  
who = TTY::Prompt.new 
system("clear") 
puts "So who won?" 
sleep 1 
puts "Dont worry if you lost, we wont rub it in :)"   
players = ["#{$player1_name}", "#{$player2_name}"]
who_won = who.select("", players)

case who_won 
when "#{$player1_name}" 
system("clear") 
puts p1.asciify("#{$player1_name} WINS").red  
puts p1_bm.asciify("#{$player2_name} IS INFERIOR").yellow 
back_menu 

when "#{$player2_name}" 
    system("clear") 
    puts p2.asciify("#{$player2_name} WINS").yellow  
    puts p2_bm.asciify("#{$player1_name} IS INFERIOR").red 
    back_menu
end  
end