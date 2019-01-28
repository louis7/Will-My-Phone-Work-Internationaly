

class Phone
  # phone class talks to scrapper to get the bands
attr_accessor :models, :bands, :name, :phone_ids

def initialize (key)
    #auto pick the phone name base on the key value the user chosed
    @key = key[0]
    @phone_ids= {1=> "iPhone Xs",2=> "iPhone Xs Max",3 => "iPhone Xr"}
    @name = @phone_ids[@key]
    self.scrape_bands
end



def scrape_bands
    #auto pick the appropriate bands base on the key value the user chosed
    if self.name == "iPhone Xs" || self.name == "iPhone Xs Max"
    self.bands = Scrapper.scrape_xs
    else
    self.bands = Scrapper.scrape_xr
  end

end



end
