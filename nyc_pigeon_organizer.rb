require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  
  data.each do |key, value|
    value.each do |inner_key, names|
      names.each do |name|
        pigeon_list[name] = {}
      end
    end
  end
  
  pigeon_list.each do |key, value|
    data.each do |inner_key, value1|
        pigeon_list[key][inner_key] = []
    end
  end
  
  pigeon_list.each do |names, value|
    data.each do |key1, value1|
      data[key1].each do |key2, value2|
        data[key1][key2].each do |element|
          if names == element
            pigeon_list[names][key1].push(key2.to_s)
          end
        end
      end
    end
  end
  
  pigeon_list
end
