def welcome
  puts "Hello and welcome!"
end

def get_character_from_user
  puts "please enter a character"
  return gets.chomp
end


def get_info_from_user
  puts "please enter what you would like to know - select from "films", "appearance" or "homeworld"."
  return gets.chomp
end
