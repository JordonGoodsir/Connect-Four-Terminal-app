require 'test/unit'
require_relative "user_creation.rb"


 
#tests for user_creation feature 
#tests to see if invalid input will raise an error 
class NameTest < Test::Unit::TestCase 
    
    
    def test_player1 

    assert_raise TooLong1 do
        
        begin
            puts "Player1 What is your gAmEr name(max 8 characters)?" 
            $player1_name = gets.chomp.split.map(&:capitalize).join(' ')   
            raise TooLong1, "Sorry player1 that names more than 8 characters, try again :)" if $player1_name.length > 8 
            
        end
    end  
end

    def test_player2 
         
        assert_raise TooLong2 do
        
            begin
                puts "Player2 What is your gAmEr name(max 8 characters)?" 
                $player2_name = gets.chomp.split.map(&:capitalize).join(' ')   
                raise TooLong2, "Sorry player1 that names more than 8 characters, try again :)" if $player2_name.length > 8  

    end 
end 
end
end 