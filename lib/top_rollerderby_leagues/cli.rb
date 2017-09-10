class TopRollerderbyLeagues::CLI

  def call
    welcome
    list_leagues
    menu
    later
  end

  def list_leagues
    TopRollerderbyLeagues::League.top_ten_leagues_list
  end

  def league_profile
    @profile = TopRollerderbyLeagues::League.league_profile
  end

  def welcome
    puts ""
    puts " Welcome to the Top 10 Ranked WFTDA Leagues List".colorize(:magenta)
    puts ""
  end

  def menu
    puts ""
    puts " Please enter rank number to see more information on league, list  or exit : ".colorize(:magenta)
    input = nil
    while input != "exit"
    input = gets.strip.downcase
    case
    when input == "exit"
      return
    when input == "list"
      puts ""
      puts " WFTDA Top 10 Leagues".colorize(:magenta)
      puts ""
      list_leagues
      puts " Please enter rank number to see more information on league, list  or exit : ".colorize(:magenta)
      puts ""
    when input.to_i >=1 && input.to_i <=10
      TopRollerderbyLeagues::League.league_profile_rank(input.to_i)
      puts " Please enter rank number to see more information on league, list  or exit : ".colorize(:magenta)
    else
      puts ""
      puts " Invalid entry. Please enter rank number, list or exit: ".colorize(:magenta)
      puts ""
      end
    end
  end

  def later
    puts ""
    puts " Thanks for checking out the Top 10 Ranked WFTDA Leagues".colorize(:magenta)
    puts ""
  end

end
