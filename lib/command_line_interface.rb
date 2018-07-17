def welcome
    puts "Hello and welcome!"
end

def get_character_from_user
  puts "please enter a character"
  return gets.chomp
end

def get_preference
  puts "what do you want to know? Type 'films', 'appearance', or 'homeworld'."
  return gets.chomp
end
