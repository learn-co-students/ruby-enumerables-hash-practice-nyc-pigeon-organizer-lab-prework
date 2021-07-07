def nyc_pigeon_organizer(data)
  # write your code here!
  new_data = {}
  data.each do |item, thing|
    thing.each do |key, value|
      value.each do |t|
        if new_data.key?(t)
          if new_data[t][item]
            new_data[t][item] << key.to_s
          else
            new_data[t][item] = [key.to_s]
          end
        else
          new_data[t] = {item => [key.to_s]}
        end
      end
    end
  end
  return new_data
end
