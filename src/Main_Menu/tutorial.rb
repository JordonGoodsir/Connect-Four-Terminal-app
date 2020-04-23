require_relative 'main_menu.rb'

def tutorial  
goin = TTY::Prompt.new
puts "-------------------------------------------------------------------------------------------------------------------"
puts "                                       ˜”*°•.˜”*°• Key Bindings •°*”˜.•°*”˜                                        "
puts "d" 
puts "moves right on the board" 
puts "" 
puts "a" 
puts "moves left on the board" 
puts "" 
puts "enter"
puts "places the piece"  
puts ""
puts "q" 
puts "quits the game" 
puts "-------------------------------------------------------------------------------------------------------------------"  
puts "                                       ˜”*°•.˜”*°• How To Play •°*”˜.•°*”˜                                         " 
puts "To play Connect 4, try to get 4 of your color checkers in a row horizontally, vertically, or diagonally before your" 
puts "opponent. When it's your turn, drop one of your checkers into one of the slots at the top of the plastic grid. Then," 
puts "let your opponent take their turn." 
puts "-------------------------------------------------------------------------------------------------------------------"  


back = goin.select("𝔹𝕒𝕔𝕜 𝕋𝕠 𝕄𝕖𝕟𝕦?".rjust(64)) do |back| 
    back.choice "Yes", 1   
end

    case back 
    when 1
        system("clear")
        main_menu 
    end


end  


