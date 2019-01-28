
class Contry
  #contry class talk to scrapper to get its bands and also compare bands if given
  # proper arguments
attr_accessor :name, :bands, :carriers

#carriers should be a hash

def initialize (name)
    @name= name
    @bands= Scrapper.scrape_contry(name)
  #  @carriers = carriers
end

def speak
    puts " I am a contry!"
end


def answer (phone_bands)
  # find out which bands from the contry is not reflected on the phone_bands.
  # also calculate the percentage of the phone match bands with the respecting contry
  @phone_bands = phone_bands
  @missing_band = self.bands - @phone_bands
 if @missing_band.empty?
    puts "iPhone LTE bands matched 100%."
    puts "you will have 4g/LTE speed in #{self.name}."
 elsif @missing_band.size >= 1
    num = @missing_band.size.to_f / self.bands.size
    percentage = num * 100
    puts "iPhone LTE bands matched #{100-percentage.round}%"
    puts "iPhone is missing some bands,You will experience some issues with your 4g/LTE speed in #{self.name}"
  end
@missing_band

end

end
