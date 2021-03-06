class WftdaScraper
attr_accessor :name, :location, :rank, :url

  def self.scrape_wftda
    doc = Nokogiri::HTML(open("https://wftda.com/wftda-leagues/"))
    doc.search(".league_type-member").each do |league_info|
      member = TopRollerderbyLeagues::League.new
      member.name = league_info.search("span.league_name").text.strip
      member.rank = league_info.search("span.ranking").text.to_i
      member.location = league_info.search("div.league-meta.league-location").text.strip
      member.url = league_info.search("div.league-logo a").attr("href").text.strip
      member.save
      #URI.join(https://wftda.com,href).to_s
    end
  end
end
