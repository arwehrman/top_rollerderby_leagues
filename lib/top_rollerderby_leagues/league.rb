class TopRollerderbyLeagues::League

  attr_accessor :name, :location, :rank, :url

  #need to create leagues with scrape
  #need to create list of leagues ranked 1- 10
  #need to create league profile: name, rank, location, url

#class variable- class scope
  @@all = []

#instance method
  def initialize(name, location, rank, url)
    @name = name
    @location = location
    @rank = rank
    @url = url
    @@all << self #adding instance to class variable
  end

#class method
  def self.all
    @@all
  end

#class method
  def self.league_profile
    self.all.each {|league|
       puts <<~DOC
      name: #{league.name}
      rank: #{league.rank}
      location: #{league.location}
      url: #{league.url}
      DOC
      }
  end

#class method
  def self.leagues_list
    self.all.each {|league| puts "#{league.rank} #{league.name}"}
  end

end #ends class


#test data- remove once scrape is working properly
TopRollerderbyLeagues::League.new("Victorian Roller Derby", "Melbourne, VIC, AU", "1", "https://wftda.com/wftda-leagues/victorian-roller-derby-league/")
TopRollerderbyLeagues::League.new("Rose City Rollers", "Portland, OR, US" ,"2", "https://wftda.com/wftda-leagues/rose-city-rollers/")
TopRollerderbyLeagues::League.new("Gotham Roller Derby", "New York City, NY, US", "3", "https://wftda.com/wftda-leagues/gotham-girls-roller-derby/")
TopRollerderbyLeagues::League.new("Angel City", "Los Angeles, CA, US", "4", "https://wftda.com/wftda-leagues/angel-city-derby-girls/")
TopRollerderbyLeagues::League.new("Denver Roller Derby", "Denver, CO, US", "5", "https://wftda.com/wftda-leagues/denver-roller-derby/")
TopRollerderbyLeagues::League.new("Texas Roller Girls", "Austin, TX, US", "6", "https://wftda.com/wftda-leagues/texas-rollergirls/")
TopRollerderbyLeagues::League.new("London Rollergirls", "London, GB", "7", "https://wftda.com/wftda-leagues/london-rollergirls/")
TopRollerderbyLeagues::League.new("Arch Rival Roller Derby", "Saint Louis, MO, US", "8", "https://wftda.com/wftda-leagues/arch-rival-roller-derby/")
TopRollerderbyLeagues::League.new("Jacksonville Roller Derby", "Jacksonville, FL, US", "9", "https://wftda.com/wftda-leagues/jacksonville-roller-derby/")
TopRollerderbyLeagues::League.new("Bay Area Derby", "San Francisco, CA, US", "10", "https://wftda.com/wftda-leagues/bay-area-derby/")
