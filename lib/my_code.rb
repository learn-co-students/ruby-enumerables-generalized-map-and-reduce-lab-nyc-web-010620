# Map
def map(array)
  new_array = []

  i = 0
  while i < array.length
    element = array[i]

    new_array << yield(element)

    i += 1
  end

  new_array
end

# Reduce
def reduce(array, starting_value=0)
  if array.first == false
    starting_value = true
  end

  i = 0
  while i < array.length
    element = array[i]

    starting_value = yield(starting_value, element)

    i += 1
  end

  starting_value
end

# def reduce(array, starting_value=nil)
#   if starting_value
#     sum = starting_value
#     i = 0
#   else
#     sum = array[0]
#     i = 1
#   end
#
#   while i < array.length
#     element = array[i]
#
#     sum = yield(sum, element)
#
#     i += 1
#   end
#
#   sum
# end
