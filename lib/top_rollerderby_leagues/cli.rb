class TopRollerderbyLeagues::CLI


      def call
        league_list
        menu
        later
      end

      def menu
        puts ""
        puts "Welcome to the WFTDA League List"
        puts ""
        puts "Please enter rank number to see more information on league or exit : "
        input = nil
        while input != "exit"
        input = gets.strip
          case input
          when "1"
            puts "League info ranked 1"
          when "2"
            puts "League info ranked 2"
          when "3"
            puts "League info ranked 3"
          when "4"
            puts "League info ranked 4"
          end
        end
      end


      def league_list
        puts ""
        puts <<~DOC
        1. Victorian Roller Derby
        2. Rose City Rollers
        3. Gotham Girls Roller Derby
        4. Angel City Derby Girls
        DOC

      end

      def later
        puts ""
        puts "Thanks for checking out WFTDA League list"
      end

  end #end of class
