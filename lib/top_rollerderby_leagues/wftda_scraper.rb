class WftdaScraper

  attr_accessor :name, :location, :rank, :url

#class method
  def self.scrape_wftda
    league_array = []
    doc = Nokogiri::HTML(open("https://wftda.com/wftda-leagues/"))
    doc.search(".league_type-member").each do |league|
      member = League.new
      member.name = league.search("span.league_name").text.strip
      member.rank = league.search("span.ranking").text.strip
      member.location = league.search("div.league-meta.league-location").text.strip
      member.url = league.search("div.league-logo a").attr("href").text.strip
      member
    league_array << member
    end
    league_array
  end
end
