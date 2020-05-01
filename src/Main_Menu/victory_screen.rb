
require_relative 'user_creation.rb' 

def victory 
p1 = Artii::Base.new 
p1_bm = Artii::Base.new 
p2 = Artii::Base.new 
p2_bm = Artii::Base.new  
who = TTY::Prompt.new 

if $winner.odd? 
    system("clear") 
    puts p1.asciify("#{$player1_name} Is The Winner").red  
    puts p1_bm.asciify("#{$player2_name} Is Inferior").yellow 
    $winner = 0 
    back_menu
elsif $winner.even?  
    system("clear") 
    puts p2.asciify("#{$player2_name} Is The Winner").yellow  
    puts p2_bm.asciify("#{$player1_name} Is Inferior").red 
    $winner = 0 
    back_menu
end
end 
