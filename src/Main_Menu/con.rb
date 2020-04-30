numbers = ["   x   ","   x   ","   x   ","       ","   x   ", "       ", "       ", "       ", "   x   ","   x   ","   x   ","   x   " ]

count = 0
numbers.each_cons(1).any? { |x,y,z,w|  
    
    
    true_or_false = x == "   x   " and y == "   x   " and z == "   x   " and w == "   x   "
    
    case true_or_false 

    when true 
     count += 1 
     puts count 
     if count >= 4  
        puts "I HECKING DID IT" 
     end
    when false 
    count = 0 
    puts count
    end
    
    # x == "   x   " and y == "   x   " and z == "   x   " and w == "   x   "
    # count += 1 
    # p count  
    # end
    
    # elsif count >= 4  
    #     puts "winner" 
    # else  
    #     count = 0 
    #     puts "loser" 
    # end

}