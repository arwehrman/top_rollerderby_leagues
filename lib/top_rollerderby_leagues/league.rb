class League

  attr_accessor :name, :location, :rank, :url

  def leagues_list
    puts ""
    puts <<~DOC
    1. Victorian Roller Derby
    2. Rose City Rollers
    3. Gotham Roller Derby
    4. Angel City Roller Derby
    5. League 5
    6. League 6
    7. League 7
    8. League 8
    9. league 9
    10. league 10
    DOC
  end

  #scrape data
  def self.scrape_wftda
    league_array = []
    doc = Nokogiri::HTML(open("https://wftda.com/wftda-leagues/"))
    doc.search(".league_type-member").each do |league|
      league_hash = {
      :name => league.search("span.league_name").text.strip,
      :rank => league.search("span.ranking").text.strip,
      :location => league.search("div.league-meta.league-location").text.strip,
      :url => league.search("div.league-logo a").attr("href").text.strip,
    }
    league_array << league_hash
    end
    league_array
  end

end #ends class
