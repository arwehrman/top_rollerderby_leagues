class TopRollerderbyLeagues::League

  attr_accessor :name, :location, :rank, :url

  #League object- attributes name, location, rank, url
  #need to create leagues with scrape
  #need to create list of leagues ranked 1- 10
  #need to create league profile: name, rank, location, url

  @@all = []

#instance method
  def initialize(name, location, rank, url)
    @name = name
    @location = location
    @rank = rank
    @url = url
    self.class.all << self
  end

#class method
  def self.all
    @@all
  end



#class method
#string data currently- should pull from League attr
  def self.league_profile
    puts <<~DOC
    name: Victorian Roller Derby
    rank:  : 1
    location: : Melbourne, VIC, AU
    url: : https://wftda.com/wftda-leagues/victorian-roller-derby-league
    DOC
  end

#class method
#string data currently- should pull from League attr
  def self.leagues_list
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

end #ends class


#test data- remove once scrape is working properly
TopRollerderbyLeagues::League.new("Angel City", "Los Angeles, CA, US", "4", "https://wftda.com/wftda-leagues/angel-city-derby-girls/")
TopRollerderbyLeagues::League.new("Gotham Roller Derby", "New York City, NY, US", "3", "https://wftda.com/wftda-leagues/gotham-girls-roller-derby/")
TopRollerderbyLeagues::League.new("Victorian Roller Derby", "Melbourne, VIC, AU", "1", "https://wftda.com/wftda-leagues/victorian-roller-derby-league/")
TopRollerderbyLeagues::League.new("Rose City Rollers", "Portland, OR, US" ,"2", "https://wftda.com/wftda-leagues/rose-city-rollers/")
