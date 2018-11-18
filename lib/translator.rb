# require modules here
 require "yaml"

def load_library(file_path)
  # code goes here
  data = YAML.load_file(file_path)
  
  emoticons = {"get_meaning" => {}, "get_emoticon" => {}}
  
  data.each do |key1, key2|  #key1=angel,angry...  #key2 Eng-emo[0] & Japa-emo[1]
    emoticons["get_meaning"][key2[1]] = key1
    emoticons["get_emoticon"][key2[0]] = key2[1]
  end
  emoticons
end

def get_japanese_emoticon(file_path = './lib/emoticons.yml', english_emoticon)
  # code goes here
  emoticons = load_library(file_path = './lib/emoticons.yml')
  
  if emoticons["get_emoticon"].include?(english_emoticon)
     emoticons["get_emoticon"][english_emoticon]
  else 
    "Sorry, that emoticon was not found"
  end  
  
end

def get_english_meaning
  # code goes here
end