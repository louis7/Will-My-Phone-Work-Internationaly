
require_relative '../config/environment.rb'
# greet user through the Greeter instance
# grab the bands of contry and phone than compare them
# list

class Controller
# get the arrays from scapper and
def initialize
    @app = Greeter.new
end

def call
    @app.greet
    self.answer
    phone =Phone.new(@app.phone_choice)
    phone.bands = [2,3,4]
    contry = Contry.new(name:"Brazil", bands:[2,3,4,28,], carriers:"vivo")
    @missing= contry.answer(phone.bands)
    self.answer

end


def answer
    # need to be the hearth of the application. will comprater the stats and
    # let us know if the bands match or not.
    puts "this is the user phone selection  #{@app.phone_choice}"
    puts "this is the user contry selection #{@app.contry_choice}"
    puts "this is the missing bands #{@missing}"

end

end
