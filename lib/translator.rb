require "pry"
require "yaml"

#emoticons is now a hash with keys like "angry" that point to arrays with two elements, first is englis emoticon, second is japanese.



def load_library(file_to_load)
  
  emoticons = YAML.load_file(file_to_load)
  new_emoticons = emoticons.each_with_object do |(key, value), final_hash|
    value.each do |element|
      
      if value == value[0]
        final_hash[key] = {:english => element}
      end
      if value == value[1]
        final_hash[key].merge!(japanese: "element")
      end
      binding.pry
    end
    
  end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end