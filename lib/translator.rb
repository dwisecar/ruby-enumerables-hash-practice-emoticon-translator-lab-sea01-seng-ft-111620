require "pry"
require "yaml"

#emoticons is now a hash with keys like "angry" that point to arrays with two elements, first is englis emoticon, second is japanese.



def load_library(file_to_load)
  
  emoticons = YAML.load_file(file_to_load)

  new_emoticons = emoticons.each_with_object({}) do |(key, value), final_hash|
    if !final_hash[key]
      final_hash[key] = {}
    end
    final_hash[key] = { 
      :english => value[0],
      :japanese => value[1]
    }
    binding.pry
  end
  new_emoticons
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end