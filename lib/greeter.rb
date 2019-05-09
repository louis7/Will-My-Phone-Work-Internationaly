
class Greeter
  attr_accessor :phone_choice, :country_choice
    # greet the user and collect their choices

def initialize
    @phone_choice  = []
    @country_choice
end

def greet
  # greet user and collect their choices
  # this sequeces directly correspond with the Phone class iDs
    puts "Please select The iphone you need by typing the corresponding number:"
    sleep(1)
    puts "1 for iPhoneXs"
    puts "2 for iPhoneXs Max"
    puts "3 for iPhoneXr"
    self.user_phone_choice
        sleep(1)
        puts "Please type in the country"
    self.user_country_choice
end


def user_phone_choice
    @user_input =  gets.chomp.to_i
    # magic array corespond wiht the inital greeting message
    while [1,2,3].include?(@user_input) == false
      puts "invalid input"
      @user_input =  gets.chomp.to_i
    end
      puts "thank you"
      @phone_choice << @user_input

end



def user_country_choice
    @user_input =  gets.chomp
    # magic array corespond wiht the inital greeting message
    # if [list of contries].include? @user_input
    #puts "thank you"
    @country_choice = @user_input.downcase
end


end
