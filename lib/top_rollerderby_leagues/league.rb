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

      Profile Info
      ------------------------------------
      name: #{league.name}
      rank: #{league.rank}
      location: #{league.location}
      url: #{league.url}
      DOC
  end

  def self.top_ten_leagues_list
    self.all.select {|league| league.rank <= 10}.sort{|a, b| a.rank <=> b.rank}.each do |league|
      puts "#{league.rank}. #{league.name}"
      puts ""
    end
  end

end
