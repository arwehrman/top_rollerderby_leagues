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
    puts ""
    puts "  Profile Info".colorize(:magenta)
    puts "  ------------------------------------".colorize(:magenta)
    puts "  name: #{league.name}".colorize(:magenta)
    puts "  rank: #{league.rank}".colorize(:magenta)
    puts "  location: #{league.location}".colorize(:magenta)
    puts "  url: https://wftda.com#{league.url}".colorize(:magenta)
    puts ""
  end

  def self.top_ten_leagues_list
    self.all.select {|league| league.rank <= 10}.sort{|a, b| a.rank <=> b.rank}.each do |league|
      puts ""
      puts " #{league.rank}. #{league.name}".colorize(:magenta)
      puts ""
    end
  end

end
