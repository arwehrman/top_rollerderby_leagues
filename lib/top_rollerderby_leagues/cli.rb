class TopRollerderbyLeagues::CLI

  def call

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

  def menu
    puts ""
    puts "Welcome to the WFTDA League List"
    puts ""
    puts "Please enter rank number to see more information on league, list  or exit : "
    input = nil
    while input != "exit"
    input = gets.strip.downcase
    case
    when input == "exit"
      return
    when input == "list"
      list_leagues
    when input.to_i >=1 && input.to_i <=10
      TopRollerderbyLeagues::League.league_profile_rank(input.to_i)
    else
      puts "Invalid entry. Please enter rank number, list or exit: "
      end
    end
  end

  def later
    puts ""
    puts "Thanks for checking out WFTDA League list"
  end

end
