def nyc_pigeon_organizer(data)
  myHash = {}
  data.each do |key, value|
    value.each do |newValue, names|
      names.each do |name|
        if !myHash[name]
          myHash[name] = {}
        end
        
        if !myHash[name][key]
          myHash[name][key] = []
        end
        
        myHash[name][key] << newValue.to_s
      end
    end
  end
  myHash
end
