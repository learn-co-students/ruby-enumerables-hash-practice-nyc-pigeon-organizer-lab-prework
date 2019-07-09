def nyc_pigeon_organizer(data)
  # write your code here!
  
  pigeon_hash = {}
  data.each do |x, y|
    y.each do |attribute, array|
      array.each do |name|
        pigeon_hash[name] = {
          :color => [],
          :gender => [],
          :lives => []
        }
      end
    end
  end
  
  #color
  data[:color].each do |pigeon_color, pigeon_name|
    pigeon_name.each do |name|
      if data[:color][pigeon_color].include?(name)
        pigeon_hash[name][:color] << pigeon_color.to_s
      end
    end
  end
  
  #gender
  data[:gender].each do |pigeon_gender, pigeon_name|
    pigeon_name.each do |name|
      if data[:gender][pigeon_gender].include?(name)
        pigeon_hash[name][:gender] << pigeon_gender.to_s
      end
    end
  end
  
  #lives
  data[:lives].each do |pigeon_life, pigeon_name|
    pigeon_name.each do |name|
      if data[:lives][pigeon_life].include?(name)
        pigeon_hash[name][:lives] << pigeon_life.to_s
      end
    end
  end
  
  pigeon_hash
end
