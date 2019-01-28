

class Scrapper
  #find the bands for iphone XS , Max, and R
  # todo : need to have a why to raise errors when whe have an invalid contry choice
  def self.scrape_xs
  @@index_page = Nokogiri::HTML(open('https://www.apple.com/iphone/LTE/'))
  iPhone_bands = @@index_page.css('div.cellular-table-cell')
  goal = iPhone_bands.css('div.cellular-table-contents')
  goal2 = goal[1]
  @@xs_xsmax_bands = []
  goal2.children[1].css('span').each do|items|
  @@xs_xsmax_bands << items.text.to_i
  end

@@xs_xsmax_bands

end




  def self.scrape_xr
    @@index_page = Nokogiri::HTML(open('https://www.apple.com/iphone/LTE/#iphone-xr'))
    iPhone_bands = @@index_page.css('div.section-content')
    level1 = iPhone_bands.css('div.cellular-table-contents')
    level2 = level1[1]
    @@xr_bands = []
    level2.children[1].css('span').each do|items|
      @@xr_bands << items.text.to_i
      end
@@xr_bands
  end




   def self.scrape_contry (name_of_contry)
        # scrape the bands from the frequencycheck site
        #todo : need to be aware if search results returns nil.
        #todo: our match regex only pair the first number
       url = "https://www.frequencycheck.com/countries/#{name_of_contry}"
       @@contry_bands = []
       @@index_page = Nokogiri::HTML(open(url))
       contry_bands = @@index_page.css('div.col-md-8')
       level1 = contry_bands.css('table.table.table-hover.table-striped.table-bordered')
       level2 = level1[3].css('a')

       level2.each do |item|
          text = item.text
          alfanumeric_data = text.match(/(B)../)
          if alfanumeric_data == nil
              next
          else
          @@band = alfanumeric_data[0].match(/\d/)
          @@contry_bands << @@band[0].to_i
          end
        end
        @@contry_bands
      end



  end
