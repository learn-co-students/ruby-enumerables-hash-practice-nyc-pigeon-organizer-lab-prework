def nyc_pigeon_organizer(data)
  pigeon_list = Hash.new
  data.each do |trait, description|
    description.each do |description, names|
      names.each do |name|
        pigeon_list[name] = {:color => [], :gender => [], :lives => []} if pigeon_list[name] == nil
        pigeon_list[name][trait] << description.to_s
      end
    end
  end
  pigeon_list
end