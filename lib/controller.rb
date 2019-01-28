
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
    @phone =Phone.new(@app.phone_choice)
    @contry = Contry.new(@app.contry_choice)
    @missing = @contry.answer(@phone.bands)
    self.more_info
end

#name:"Brazil", bands:[2,3,4,28,], carriers:"vivo"
def more_info
  # show the user a list of the bands of both the phone and contry_bands
  if @missing.empty?
     puts "Here is the LTE bands of your #{@phone.name}: #{@phone.bands.join(', ')}."
     puts "Here is the LTE bands that #{@contry.name.capitalize} uses: #{@contry.bands.join(', ')}."
  else
     puts "Here is the LTE bands of your #{@phone.name}: #{@phone.bands.join(', ')}."
     puts "Here is the LTE bands that #{@contry.name.capitalize} uses: #{@contry.bands.join(', ')}."
     puts "Here is the LTE bands of your #{@phone.name}: #{@phone.bands.join(', ')}."
     puts "Here is the missing LTE bands form your phone : #{@missing.join(', ')}."
  end
end




end
