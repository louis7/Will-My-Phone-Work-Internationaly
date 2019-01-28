
class Greeter
  attr_accessor :phone_choice, :contry_choice
    # greet the user and collect their choices

def initialize
    @phone_choice  = []
    @contry_choice
end

def greet
  # greet user and collect their choices
  # this sequeces is dirrectly correspondant with the Phone class iDs
    puts "Please select The iphone you need"
    puts "1.iPhoneXs"
    puts "2.iPhoneXs Max"
    puts "3.iPhoneXr"
    self.user_phone_choice
        puts "Please type in the contry"
    self.user_contry_choice
end


def user_phone_choice
    @user_input =  gets.chomp.to_i
    # magic array corespond wiht the inital greeting message
    if [1,2,3].include? @user_input
        puts "Thank you"
        @phone_choice << @user_input
    else
        puts "invalid input"
        @user_input =  gets.chomp.to_i
        @phone_choice << @user_input
    end
end



def user_contry_choice
    @user_input =  gets.chomp
    # magic array corespond wiht the inital greeting message
    # if [list of contries].include? @user_input
    #puts "thank you"
    @contry_choice = @user_input.downcase
end


end
