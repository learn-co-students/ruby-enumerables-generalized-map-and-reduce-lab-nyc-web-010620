def map(source_array)
  x = 0
  new_array = []

  while x < source_array.length do
    new_array << yield(source_array[x])
    x += 1
  end
  new_array
end

def reduce(source_array, starting_point = nil)

  if starting_point
    result = starting_point
    x = 0
  else
    result = source_array[0]
    x = 1
  end

  while x < source_array.length do
    result = yield(result, source_array[x])
    x += 1
  end
  result
end
