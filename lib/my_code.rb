# Your Code Here

[1, 2, 3].map_to_square { |n| n * 2 } # => [2, 4, 6]


def famous_movie_actors(element1, element2)
  yield("Actors #{element1} and #{element2} are")
end
 
famous_movie_actors("Robert De Niro", "Al Pacino") { |innards| "#{innards} are legends" }
#=> "Actors Robert De Niro and Al Pacino are legends"
