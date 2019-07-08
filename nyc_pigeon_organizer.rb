def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |atttribute, data|
    data.each do |value, names_arr|
      names_arr.each do |name|
        new_hash[name] = {} if !new_hash[name]
        new_hash[name][atttribute] = [] if !new_hash[name][atttribute]
        new_hash[name][atttribute].push(value.to_s)
      end
    end
  end
  new_hash
end
