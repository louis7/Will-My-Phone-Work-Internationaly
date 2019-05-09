
require_relative '../config/environment.rb'
# greet user through the Greeter instance
# grab the bands of country and phone than compare them
# list

class Controller
# get the arrays from scapper and

def initialize
    @app = Greeter.new
end

def call
  # greet user, intantiate a phone, and country, have country calulate what missing
  # .. than inform the user of the result.

    @app.greet
    @phone =Phone.new(@app.phone_choice)
    @country = Country.new(@app.country_choice)
    @missing = @country.answer(@phone.bands)
    sleep(2)
    puts "Gathering more info..."
    sleep(2)
    self.more_info
end

#name:"Brazil", bands:[2,3,4,28,], carriers:"vivo"
def more_info
  # show the user a list of the bands of both the phone and country_bands
  if @missing.empty?
    puts "                                                                "
    puts "LTE bands of your phone"
    puts "=============================================================="
    puts "Device: #{@phone.name}"
    puts "Bands: #{@phone.bands.join(', ')}."
    puts "                                                                "
    puts "                                                                "

    puts "LTE bands of your country"
    puts "=============================================================="
    puts "Country: #{@country.name.capitalize}"
    puts "Bands: #{@country.bands.join(', ')}."
    puts "=============================================================="
    puts "                                                                "
  else
     puts "                                                                "
     puts "LTE bands of your phone"
     puts "=============================================================="
     puts "Device: #{@phone.name}"
     puts "Bands: #{@phone.bands.join(', ')}."
     puts "=============================================================="

     puts "                                                                "
     puts "                                                                "

     puts "LTE bands of your country"
     puts "=============================================================="
     puts "Country: #{@country.name.capitalize}"
     puts "Bands: #{@country.bands.join(', ')}."
     puts "=============================================================="
     puts "                                                                "
     puts "                                                                "

     puts "=============================================================="
     puts "Your Phone is missing Band #{@missing.join(', ')}."
     puts "=============================================================="
     puts "                                                                "


  end
end




end
