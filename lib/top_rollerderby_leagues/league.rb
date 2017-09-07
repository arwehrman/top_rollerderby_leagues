class TopRollerderbyLeagues::League

  attr_accessor :name, :location, :rank, :url












#get this data from the hash
  def leagues_list
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
