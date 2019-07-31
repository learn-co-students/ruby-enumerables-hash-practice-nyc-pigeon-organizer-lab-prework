def nyc_pigeon_organizer(data)
  list_of_names = {}
  data.each do |key,value|
    value.each do |key1, value1|
      value1.each do |list|
        if !list_of_names.has_key?(list)
          list_of_names[list] = {}
        end 
        if !list_of_names[list].has_key?(key)
          list_of_names[list][key] = []
        end
        if !list_of_names[list][key].include?(key1)
          list_of_names[list][key].push(key1.to_s)
      end 
    end 
  end
end

list_of_names
end 

