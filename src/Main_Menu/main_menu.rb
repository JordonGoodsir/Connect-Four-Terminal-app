
puts "Would you like to play connect four? (yes or no)" 
play = gets.chomp.downcase  

if play != "yes" 
    exit 
end 

puts "Player 1 whats your game name?"
$player1_name = gets.chomp 

puts "Player 2 whats your game name?"
$player2_name = gets.chomp
