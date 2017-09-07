class WftdaScraper

  attr_accessor :name, :location, :rank, :url

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
end
