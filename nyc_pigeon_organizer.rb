def nyc_pigeon_organizer(data)
  # write your code here
  pigeon_list = {}
  data.each do |trait, attributes|
    attributes.each do |details, names|
      names.each do |name|
        pigeon_list[name] ||= {}
        pigeon_list[name][trait] ||= []
        pigeon_list[name][trait] << details.to_s
      end
    end
  end
  return pigeon_list
end
