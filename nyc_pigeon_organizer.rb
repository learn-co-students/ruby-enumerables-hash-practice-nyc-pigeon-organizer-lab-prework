def nyc_pigeon_organizer(data)
  sorted_data = {}
  data.each do |k, v| ## key is color, gender, lives - value is object
    v.each do |k2, v2|
      v2.each do |pigeon|
        if !sorted_data[pigeon]
            sorted_data[pigeon] = {}
        end
      end
    end
  end
  sorted_data.each do |k, v|
    data.each do |k2, v2|
      v[k2] = []
        v2.each do |k3, v3|
          if v3.include?(k)
            v[k2] << k3.to_s
          end
        end
    end
  end
  sorted_data
end

