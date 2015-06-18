# 1.upto(100).each do |i|
#   
  # result = ''
#   
  # if i % 3 == 0
    # result += "fizz"
  # end
#   
  # if i % 5 == 0
    # result += "buzz"
  # end
#  
  # if result == ''
    # result = i
  # end
#   
   # puts result
#    
# end

class FizzBuss
  def initialize(conditions, lambda)
    @conditions = conditions
    @lambda = lambda
  end
  
  def run
    1.upto(100).each do |i|
      print_number(i)
  end
  
  def print_number(number)
    
  if result == ""
     puts number
  else
    puts result
  end
 end
end   
     
lambda = ->(i, conditions, string) do
  if i % condition == 0
    return string
  end
end

conditions = {
  3 => "Fizz"
  5 => "Buzz"
}

# 1.upt0(100).each do |i|
  # if i % 3 == 0 && i % 5 == 0
    # puts "FizzBuzz"
#   
  # elsif i % 3 == 0
    # puts "Fizz"
  # end
#   
  # elsif i % 5 == 0
    # puts "Buzz"
  # end
#   
  # else
    # puts i
  # end
 # end

#Fizz Buzz

#write a program that will itierate from 1 to 100
#for multiple of 3 it will print "fizz"
#for multiples of 5 it will print "buzz"
#otherwise print the number

=begin
#array.each do |i|
 # puts i
#end

class TestClass

  def do_stuff(&block)
    puts "I am doing stuff"
    block.call
    puts "I am right"
  end
end

TestClass.new.do_stuff do
  puts "Help"
end


 * example of a block

class TestClass

  def do_stuff
    puts "I am doing stuff"
    yield #calls argument within the method
    puts "I am right"
  end
end

TestClass.new.do_stuff do
  puts "Help"
end
  


 class Furnace
  
  def on(logger)
    logger.call("turned on")
  end
  
  def off(logger)
    logger.call("turned off")
  end  
end

furnace = Furnace.new
furnace.on(logger) 
=end



