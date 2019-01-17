
class Contry
attr_accessor :name, :bands, :carriers

#carriers should be a hash

def initialize (name:,bands:,carriers:)
    @name= name
    @bands= bands
    @carriers = carriers
end

def speak
    puts " I am a contry!"
end


def answer (phone_bands)
  # find out with bands from the contry is not reflected on the phone_bands.
  @phone_bands = phone_bands
  @missing = self.bands - @phone_bands
 if @missing.empty?
    puts "phone bands matched 100%"
 elsif @missing.size >= 1
    num = @missing.size.to_f / self.bands.size
    percentage = num * 100
    puts "phone is missing some bands, matched #{100-percentage.round}%"
 #else
    #num = missing.size.to_f / self.bands.size
    #percentage = num * 100
    #percentage = @missing.size / self.band.size
  #  puts "phone is missing some bands, matched #{100 -percentage}%""
  end
@missing

end

end
