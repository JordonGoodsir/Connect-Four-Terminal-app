
def name_get
    loading = BarOfProgress.new(:total => 50,
        :length => 87,
        :braces => %w{},
        :complete_indicator => "●",
        :partial_indicator => "◍",
        :incomplete_indicator => "◌",
        :precision => 20) 

puts "Player1 will go first, decide deserves to go first? (｀∀´)Ψ"
puts
puts "Player1 What is your gAmEr name?"  
sleep 1 
$player1_name = gets.chomp.split.map(&:capitalize).join(' ')  
puts
sleep 0.5
puts "Player2 What is your gAmEr name?" 
$player2_name = gets.chomp.split.map(&:capitalize).join(' ')  

 

progress = 0
loop do 
progress += 1 
system("clear")  
puts "                            Loading high octain game play"
p loading.progress(progress) 
sleep 0.03 
if progress == 51 
    break 
end  
end

end

