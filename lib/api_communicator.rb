require 'rest-client'
require 'json'
require 'pry'

def get_character_movies_from_api(character)
  #make the web request
  all_characters = RestClient.get('http://www.swapi.co/api/people/')
  character_hash = JSON.parse(all_characters)

<<<<<<< HEAD
  def find_films(character_hash, character)
    i=0;
    character_hash["results"].each do |character_input|
      if character_input["name"] == character
        return character_hash["results"][i]["films"]
        i+=1
      end
    end
  end

  def get_film_info(arr_of_films)
    arr_of_films.map {|film| RestClient.get(film)}
  end
=======
    def find_films(character_hash, character)
      i = 0
        character_hash["results"].each do |character_input|
          if character_input["name"] == character
            return character_hash["results"][i]["films"]
            i += 1
          end
        end
    end

    def get_film_info(arr_of_films)
      arr_of_films.map do |film|
        RestClient.get(film)
      end
    end
>>>>>>> origin/sarah

  arr_of_films = find_films(character_hash, character)
  return get_film_info(arr_of_films)
end
<<<<<<< HEAD
=======

>>>>>>> origin/sarah
  # iterate over the character hash to find the collection of `films` for the given
  #   `character`
  # collect those film API urls, make a web request to each URL to get the info
  #  for that film
  # return value of this method should be collection of info about each film.
  #  i.e. an array of hashes in which each hash reps a given film
  # this collection will be the argument given to `parse_character_movies`
  #  and that method will do some nice presentation stuff: puts out a list
  #  of movies by title. play around with puts out other info about a given film.

def parse_character_movies(films_hash)
  new_array = []
  # some iteration magic and puts out the movies in a nice list
<<<<<<< HEAD
=======
  new_array = []
>>>>>>> origin/sarah
  films_hash.each do |film|
    new_array.push(JSON.parse(film))
  end
  return new_array
end

def show_character_movies(character)
<<<<<<< HEAD
  i=0;
=======
  i = 0;
>>>>>>> origin/sarah
  films_hash = get_character_movies_from_api(character)
  array_of_films = parse_character_movies(films_hash)
  array_of_films.each do |film|
    puts array_of_films[i]["title"]
<<<<<<< HEAD
    i+=1
  end
=======
    i+= 1
    end
>>>>>>> origin/sarah
end




## BONUS

# that `get_character_movies_from_api` method is probably pretty long. Does it do more than one job?
# can you split it up into helper methods?
