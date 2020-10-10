require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |key, value|
    value.each do |key2, value2|
      binding.pry
      pigeon_list[value2] = {}
    end
  end
  return pigeon_list
end