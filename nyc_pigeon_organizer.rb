def nyc_pigeon_organizer(pigeon_data)
  pigeon_hash = {}
  pigeon_data.each do |key, value|
    value.each do |descriptor, names|
      names.each do |name|
        if pigeon_hash[name]
          pigeon_hash[name][key] << descriptor.to_s
        else
          pigeon_hash[name] = {:color => [], :gender => [], :lives => []}
          pigeon_hash[name][key] << descriptor.to_s
        end
      end
    end
  end
    pigeon_hash
end

