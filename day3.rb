class User
  attr_reader :user_name, :password
  def initialize(user_name, password)
    @user_name = user_name
    @password = password
  end
end

class CommandLine
  def initialize
    @current_username = ""
    @users = UserCreator.new.run
  end

  def exists?(user_name)
    exists = false
    @users.each do |user|
      if user.user_name == user_name
        exists = true
      end
    end
    exists
  end
  
   def ask_credentials
    puts "What is your username?"
    user_name = gets.chomp
    if exists?(user_name) 
      @current_username = user_name
      ask_password
    else 
      puts "The user name doesn't exist."
      exit
    end
  end
  
  def ask_password
    puts "What is your password?"
    password = gets.chomp
    if validate_password(password)
      puts "You have access!!"
      text_response
    else
      puts "Wrong password"
    end
   end 
    
   def validate_password(password)
    found = false
    @users.each do |user|
      if user.user_name == @current_username
        if user.password == password 
          found = true
        end
      end
    end
    found
  end
  
  def text_response
    puts "Please enter your favorite phrase."
    text = gets.chomp
    Menu.new(text).select_option
  end
end

class Menu
  def initialize(text)
    @text = text
    @options = ["count words", "count letters", "reverse phrase", "convert phrase", "show as uppercase", "show as lowercase"]
  end
  
  def show_options
    @options.each do |option|
      puts option
    end
  end
  
  def select_option
    puts "Select one option"
    show_options
    option = gets.chomp
    run_option(option)  
  end
  
  def run_option(option)
    case option
    when "count words" then WordCounter.new.run(@text)
    when "count letters" then LetterCounter.new.run(@text)
    when "reverse phrase" then PhraseReverter.new.run(@text)  
    when "show as uppercase" then Uppercaser.new.run(@text)
    when "show as lowercase" then Lowercaser.new.run(@text)
    end
  end
  
end

class WordCounter
  def run(text)
    puts "Your phrase has #{text.split(' ').length} words"
  end
end

class LetterCounter
  def run(text)
    puts "Your phrase has #{text.length} letters"
  end
end

class PhraseReverter
  def run(text)
    puts "Youphrase is now written backwords #{text.reverse}."
  end
end

class Uppercaser
  def run(text)
    puts "#{text.upcase}.  Why are you yelling?"
  end
end

class Lowercaser
  def run(text)
    puts "#{text.downcase}.  We can't hear you"
  end
end

class UserCreator
  def initialize(commandline)
    @commandline = commandline
  end
  def run
    users_data = File.readlines("users.txt")
    users_data.each do |user_data|
      single_user_data = user_data.split(", ")
      user = User.new(single_user_data[0].chomp, single_user_data[1].chomp)
      @commandline.add_user(user) # push here
    end
  end
end

cl = CommandLine.new

cl.ask_credentials


=begin
class Car
  def moveTo(direction)
    Direction.new(direction).execute
  end
end


class Direction
  def initialize(direction)
    @direction = direction
  end
    
  def execute
    case @direction
      when "N" then puts "moving North"
      when "S" then puts "moving South"
      when "E" then puts "moving East"
      when "W" then puts "moving West" 
    end       
  end
  
  def unexecute
   
  end
end
 
class Distance
  def initialize(distance)
    @distance = distance
  end
  
  def execute
    puts "You moved #{@distance}"
  end
  
  def unexecute
  
  end
end
 
class Speed
  def initialize(speed)
    @speed = speed
  end
  
  def execute
  end
  
  def unexecute
  
  end
end
 
car1 = Car.new
car1.moveTo("N")




class Car
  attr_reader :sound
  def initialize(sound)
    @sound = sound
  end
end

class CarListReport
  def initialize(formatter, cars)
    @formatter = formatter
    @cars = cars
  end
  
  def report
    @formatter.print(@cars)
  end
end

class HTMLFormat
  def print(cars)
    cars.each do |car|
      puts car.sound
    end
  end
end

class PlainTextFormat
  def print(cars)
    cars.each do |car|
      puts car.sound
    end
  end
end

car1 = Car.new("brrom")
car2 = Car.new("meek")
cars = [car1, car2]

list = CarListReport.new(HTMLFormat.new, cars)
list.report


class HHRR 
   def update( changed_employee )
   puts("I don't wanna pay more money to #{changed_employee.name}!")
   puts("His salary is now #{changed_employee.salary}!")
 end
end

class Payroll
  
 def update( changed_employee )
   puts("Cut a new check for #{changed_employee.name}!")
   puts("His salary is now #{changed_employee.salary}!")
 end
end

class Employee
 attr_reader :name, :title
 attr_reader :salary

 def initialize( name, title, salary) 
   @name = name
   @title = title
   @salary = salary
   @observers = []
 end
 
  def update
    @observers.each do |observer|
      observer.update
    end

 def salary=(new_salary) 
    @salary = new_salary 
    @observers.update(self)
 end
end

payroll = Payroll.new
hhrr = HHRR.new
fred = Employee.new('Fred', 'Crane Operator', 30000, observers)
fred.salary = 35000




class User
  attr_accessor :email, :twitter, :facebook
 
end

class EmailNotifier
   def initialize(user)
    @user = user
  end
  
  def send_message
    puts "I'm notifying #{@user.email} using email"
  end
end
class NotifierFactory
  def initialize(user)
    @user = user
  end
  
  def self.send_message
    if user.email
      Email.new.send
    elsif user.twitter
      
    elsif user.facebook
      
    else
      puts "Incorrect mean"  
    end
  end
end

user = User.new("email", nil, nil)
NotifierFactory.new(user).send_message
  
=end
