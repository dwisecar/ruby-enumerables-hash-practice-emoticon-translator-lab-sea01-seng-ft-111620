require "pry"
require "yaml"

emoticons = YAML.load_file('lib/emoticons.yml')
#emoticons is now a hash with keys like "angry" that point to arrays with two elements, first is englis emoticon, second is japanese.



def load_library
  emoticons = YAML.load_file('lib/emoticons.yml')
end
#binding.pry
def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end