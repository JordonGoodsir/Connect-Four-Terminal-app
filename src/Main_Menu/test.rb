require 'test/unit'
require_relative "user_creation.rb"


 
class NameTest < Test::Unit::TestCase 
    
    def setup 
        begin
            puts "Player1 What is your gAmEr name(max 7 characters)?" 
            $player1_name = gets.chomp.split.map(&:capitalize).join(' ')   
            raise TooLong1, "Sorry player1 that names more than 7 characters, try again :)" if $player1_name.length >= 7 
            
            rescue TooLong1 => e 
                puts "#{e.message}"   
            end 
    end
    
    def test_player1 
      assert_equal "Sorry player1 that names more than 7 characters, try again :)", TooLong1, "should return error as it exeeds max character limit"
    end 

    # def test_player2 

    # end
end 





# class Hello 
#     def self.world  
#         "world" 
#     end 
# end 




# class HelloTest < Test::Unit::TestCase
#     def test_world
#       assert_equal 'world', Hello.world, "Hello.world should return a string called 'world'"
#     end 
# end
  
#     # def test_flunk
#     #   flunk "You shall not pass"
#     # end
#   end


