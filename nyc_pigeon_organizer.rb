def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each do |key, val|
    val.each do |k, v|
      v.each do |arrItem|
        if !pigeon_list.include?(arrItem)
         pigeon_list[arrItem] = {}
        end
        if pigeon_list[arrItem].include?(key)
          pigeon_list[arrItem][key].push(k.to_s)
        else
          pigeon_list[arrItem][key] = [k.to_s]
        end
      end
    end
  end
  return pigeon_list
end
