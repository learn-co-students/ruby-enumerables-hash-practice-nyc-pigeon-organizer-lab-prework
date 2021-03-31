def nyc_pigeon_organizer(data)
  # write your code here!
  organizer = {}
  
  data.each do | datum, details |
    details.each do | detail, detailees |
      detailees.each do | detailee |
        if !organizer[detailee]
          organizer[detailee] = {}
        end
        
        if !organizer[detailee][datum]
          organizer[detailee][datum] = []
        end
        
        organizer[detailee][datum] << detail.to_s
      end
    end
  end

  organizer
end
