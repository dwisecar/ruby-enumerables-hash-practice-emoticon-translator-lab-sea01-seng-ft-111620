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
  end
  new_emoticons
end

def get_japanese_emoticon(file, emoticon)
  sorted_emoticons = load_library(file)
  translated_emoticon = ""
  
  sorted_emoticons.each do |key, value| 
    if emoticon == value[:english]
      translated_emoticon = value[:japanese]
    end
  end
  if translated_emoticon == ""
    translated_emoticon = "Sorry, that emoticon was not found"
  end
  translated_emoticon
end

def get_english_meaning(file, emoticon_arg)
    sorted_emoticons = load_library(file)
    english_meaning = ""
    
    sorted_emoticons.each do |happy_key, value| 
      if emoticon_arg == value[:japanese]
        english_meaning = happy_key
      end
    end
    if english_meaning == ""
      english_meaning = "Sorry, that emoticon was not found"
    end
    english_meaning
end