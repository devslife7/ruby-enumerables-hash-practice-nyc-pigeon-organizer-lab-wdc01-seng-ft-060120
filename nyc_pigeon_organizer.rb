require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  hash = {}
  
  data.each do |key, value|
    data[key].each do |key1, value1|
      data[key][key1].each do |element|
        hash[element] = {}
      end
    end
  end
  
  hash.each do |key, value|
    data.each do |key1, value1|
        hash[key][key1] = []
    end
  end
  
  hash.each do |key, value|
    data.each do |key1, value1|
      data[key1].each do |key2, value2|
        data[key1][key2].each do |element|
          if key == element
            hash[key][key1].push(key2.to_s)
          end
        end
      end
    end
  end
  
  hash
end
