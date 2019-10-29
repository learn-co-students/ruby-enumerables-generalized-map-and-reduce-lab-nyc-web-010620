# Your Code Here
def map(array)
  i = 0
  result = []
  while i < array.length do
    result.push(yield(array[i]))
    i += 1
  end
  result
end


def reduce(array,start_point = 0)
  i = 0
  result = start_point

  while i < array.length do
    if array[i].is_a?! Integer
      
  end
  
  
  while i < array.length do
    result = yield(result, array[i])
    i += 1
  end
    result
  end
