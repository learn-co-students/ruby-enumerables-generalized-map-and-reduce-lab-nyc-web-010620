require "pry"

def map(array)
  new_array = []
  array.map do |element|
    new_array << yield(element)
  end
  new_array
end

def reduce(array, starting_point = nil)
  if starting_point
    result = starting_point
    count = 0
  else
    result = array[0]
    count = 1
  end
  while count < array.length 
    result = yield(result, array[count])
  count += 1 
  end
  result
end