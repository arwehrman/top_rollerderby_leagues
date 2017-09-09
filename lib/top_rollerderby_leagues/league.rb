class TopRollerderbyLeagues::League

  attr_accessor :name, :location, :rank, :url

  @@all = []


  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.league_profile_rank(rank)
    league = self.all.detect {|league| league.rank == rank}

    puts <<~DOC
      name: #{league.name}
      rank: #{league.rank}
      location: #{league.location}
      url: #{league.url}
      DOC
    end
  end

  def self.top_ten_leagues_list
    self.all.select {|league| league.rank <= 10}.sort{|a, b| a.rank <=> b.rank}.each do |league|
      puts "#{league.rank}. #{league.name}"
    end
  end

end #ends class


#test data- remove once scrape is working properly
#TopRollerderbyLeagues::League.new("Jacksonville Roller Derby", "Jacksonville, FL, US", 9, "https://wftda.com/wftda-leagues/jacksonville-roller-derby/")
#TopRollerderbyLeagues::League.new("Victorian Roller Derby", "Melbourne, VIC, AU", 1, "https://wftda.com/wftda-leagues/victorian-roller-derby-league/")
#TopRollerderbyLeagues::League.new("Denver Roller Derby", "Denver, CO, US", 5, "https://wftda.com/wftda-leagues/denver-roller-derby/")
#TopRollerderbyLeagues::League.new("Gotham Roller Derby", "New York City, NY, US", 3, "https://wftda.com/wftda-leagues/gotham-girls-roller-derby/")
#TopRollerderbyLeagues::League.new("Angel City", "Los Angeles, CA, US", 4, "https://wftda.com/wftda-leagues/angel-city-derby-girls/")
#TopRollerderbyLeagues::League.new("Alamo City Rollergirls", "TX, US", 198, "https://wftda.com/wftda-leagues/alamo-city-rollergirls/")
#TopRollerderbyLeagues::League.new("Texas Roller Girls", "Austin, TX, US", 6, "https://wftda.com/wftda-leagues/texas-rollergirls/")
#TopRollerderbyLeagues::League.new("London Rollergirls", "London, GB", 7, "https://wftda.com/wftda-leagues/london-rollergirls/")
#TopRollerderbyLeagues::League.new("Arch Rival Roller Derby", "Saint Louis, MO, US", 8, "https://wftda.com/wftda-leagues/arch-rival-roller-derby/")
#TopRollerderbyLeagues::League.new("Rose City Rollers", "Portland, OR, US" ,2, "https://wftda.com/wftda-leagues/rose-city-rollers/")
#TopRollerderbyLeagues::League.new("Bay Area Derby", "San Francisco, CA, US", 10, "https://wftda.com/wftda-leagues/bay-area-derby/")
#TopRollerderbyLeagues::League.new("2 x 4 Roller Derby", "Buenos Aires, AR", 24, "https://wftda.com/wftda-leagues/2-x-4-roller-derby/")
#TopRollerderbyLeagues::League.new("Arizona Roller Derby", "Phonix, AZ, US", 27, "https://wftda.com/wftda-leagues/arizona-roller-derby/")



#save just in case need later
  #def self.sort_league_by_rank
    #self.all.sort{|a, b| a.rank <=> b.rank}.each do |league|
      #puts "#{league.rank}. #{league.name}"
    #end
  #end
