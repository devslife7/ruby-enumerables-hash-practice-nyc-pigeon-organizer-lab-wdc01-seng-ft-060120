require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  
  data.each do |key, value|
    value.each do |color, names|
      names.each do |element|
        pigeon_list[element] = {}
      end
    end
  end
  
  pigeon_list.each do |key, value|
    data.each do |key1, value1|
        pigeon_list[key][key1] = []
    end
  end
  
  pigeon_list.each do |key, value|
    data.each do |key1, value1|
      data[key1].each do |key2, value2|
        data[key1][key2].each do |element|
          if key == element
            pigeon_list[key][key1].push(key2.to_s)
          end
        end
      end
    end
  end
  
  pigeon_list
end
