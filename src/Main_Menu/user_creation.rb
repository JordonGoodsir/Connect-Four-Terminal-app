class TooLong1 < ArgumentError 
end 
class TooLong2 < ArgumentError 
end



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
sleep 1

begin
puts "Player1 What is your gAmEr name(max 7 characters)?" 
$player1_name = gets.chomp.split.map(&:capitalize).join(' ')   
raise TooLong1, "Sorry player1 that names more than 7 characters, try again :)" if $player1_name.length >= 7 

rescue TooLong1 => e 
    puts "-------"
    puts "#{e.message}"  
    puts "-------" 
    sleep 1 
    system("clear") 
    retry  
end


puts
sleep 0.5 

begin

puts "Player2 What is your gAmEr name(max 7 characters)?" 
$player2_name = gets.chomp.split.map(&:capitalize).join(' ') 
raise TooLong2, "Sorry player2 that names more than 7 characters, try again :)" if $player2_name.length >= 7  

rescue TooLong2 => e 
    puts "-------"
    puts "#{e.message}"  
    puts "-------" 
    sleep 1 
    system("clear") 
    retry 
end




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

