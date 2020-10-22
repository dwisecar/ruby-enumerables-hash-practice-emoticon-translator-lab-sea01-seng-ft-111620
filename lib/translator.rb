require "pry"
require "yaml"

#emoticons is now a hash with keys like "angry" that point to arrays with two elements, first is englis emoticon, second is japanese.



def load_library(file_to_load)
  
  emoticons = YAML.load_file(file_to_load)
  emoticons.each do |key, value|
    value.each do |element|
      binding.pry
      if value[0]
        key = {:english => element}
      end
      if value[1]
        key.merge!(japanese: "element")
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