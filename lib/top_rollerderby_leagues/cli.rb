class TopRollerderbyLeagues::CLI


      def call
        list_leagues
        menu
        later
      end

#working  with fake data
      def list_leagues
        @list = TopRollerderbyLeagues::League.top_ten_leagues_list
      end

#working with fake data
      def league_profile
        @profile = TopRollerderbyLeagues::League.league_profile
      end


#probably change to an if statement
#need to pull league profile when rank number is selected
#right now pulling the entire list, use find_by_rank method?
      def menu
        puts ""
        puts "Welcome to the WFTDA League List"
        puts ""
        puts "Please enter rank number to see more information on league, list  or exit : "
        input = nil
        while input != "exit"
        input = gets.strip.downcase
          case input
          when "1"
            "League info ranked 1"
          when "2"
            puts "League info ranked 2"
          when "3"
            puts "League info ranked 3"
          when "4"
            puts "League info ranked 4"
          when "5"
            puts "League info ranked 5"
          when "6"
            puts "League info ranked 6"
          when "7"
            puts "League info ranked 7"
          when "8"
            puts "League info ranked 8"
          when "9"
            puts "League info ranked 9"
          when "10"
            puts "League info ranked 10"
          when "list"
            list_leagues
          else
            puts "Invalid entry. Please enter rank number, list or exit: "
          end
        end
      end


      def later
        puts ""
        puts "Thanks for checking out WFTDA League list"
      end

  end #end of class
