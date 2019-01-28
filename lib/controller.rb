
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
  # greet user, intantiate a phone, and contry, have contry calulate what missing
  # .. than inform the user of the result.

    @app.greet
    phone =Phone.new(@app.phone_choice)
    contry = Contry.new(@app.contry_choice)
    @missing = contry.answer(phone.bands)
    self.answer

end

#name:"Brazil", bands:[2,3,4,28,], carriers:"vivo"

def answer
    # need to be the hearth of the application. will comprater the stats and
    # let us know if the bands match or not.
    puts "this is the user phone selection  #{@app.phone_choice}"
    puts "this is the user contry selection #{@app.contry_choice}"
    puts "this is the missing bands #{@missing}"

end

end
