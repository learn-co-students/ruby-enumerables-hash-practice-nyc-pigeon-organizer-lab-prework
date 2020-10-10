require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |key, value|
    value.each do |key2, value2|
      value2.each do |pigeon_name|
        pigeon_list[pigeon_name] = {}
      end
    end
  end
  return pigeon_list
end