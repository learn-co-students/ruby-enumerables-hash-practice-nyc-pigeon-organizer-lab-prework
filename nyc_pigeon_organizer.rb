pigeon_data = {
        :color => {
          :purple => ["Theo", "Peter Jr.", "Lucky"],
          :grey => ["Theo", "Peter Jr.", "Ms. K"],
          :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
          :brown => ["Queenie", "Alex"]
        },
        :gender => {
          :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
          :female => ["Queenie", "Ms. K"]
        },
        :lives => {
          "Subway" => ["Theo", "Queenie"],
          "Central Park" => ["Alex", "Ms. K", "Lucky"],
          "Library" => ["Peter Jr."],
          "City Hall" => ["Andrew"]
        }
      }


def nyc_pigeon_organizer(data)
  new_data = {}
  data.reduce({}) do |memo, (key, value)|
    level = data[key]
    j = 0
    while j < key.length
      attribute = key
      attribute_value = value
      data[key].reduce({}) do |memo, (key, value)|
        i = 0 
        while i < value.size
          name = value[i]
          new_data[name] = {:color => [], :gender => [], :lives => []} unless new_data[name]
          case attribute
            when :color
              new_data[name][:color]
              new_data[name][:color] << key.to_s unless new_data[name][:color] == key
              new_data[name][:color] = new_data[name][:color].uniq
            when :gender
              new_data[name][:gender] << key.to_s unless new_data[name][:gender] == key
              new_data[name][:gender] = new_data[name][:gender].uniq
            when :lives
              new_data[name][:lives] << key.to_s unless new_data[name][:lives] == key   
              new_data[name][:lives] = new_data[name][:lives].uniq
          end
          i += 1
        end
        j += 1
      end
    end
  end
  return new_data
end

nyc_pigeon_organizer(pigeon_data)

