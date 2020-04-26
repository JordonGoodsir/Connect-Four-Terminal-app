
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
players = ["#{$player1_name}".red, "#{$player2_name}".yellow]
who_won = who.select("", players)

case who_won 
when "#{$player1_name}".red 
system("clear") 
puts p1.asciify("#{$player1_name} Is The Winner").red  
puts p1_bm.asciify("#{$player2_name} Is Inferior").yellow 
back_menu 

when "#{$player2_name}".yellow 
    system("clear") 
    puts p2.asciify("#{$player2_name} Is The Winner").yellow  
    puts p2_bm.asciify("#{$player1_name} Is Inferior").red 
    back_menu
end  
end