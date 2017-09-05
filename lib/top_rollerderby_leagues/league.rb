class League

  attr_accessor :name, :location, :rank, :url

  #create a league instance: name, location, rank, url
  #store in a array? @@all?
  #scrape data from website
  #create list by rank



   def self.list
     league_1 = self.new
     league_1.name = "Victoria Roller Derby"
     league_1.location = "Melbourne, VIC, AU"
     league_1.rank = "1"
     league_1.url = "https://wftda.com/wftda-leagues/victorian-roller-derby-league/"

     league_2 = self.new
     league_2.name = "Rose City Rollers"
     league_2.location = "Portland, OR, US"
     league_2.rank = "2"
     league_2.url = "https://wftda.com/wftda-leagues/rose-city-rollers/"

     [league_1, league_2]
   end







end
