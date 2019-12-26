def map(array) 
  array.map { |ele| yield(ele)}
end 

def reduce(array, starting_point = nil)
  if starting_point  
    sum = starting_point
    i = 0
  else 
    sum = array[0]
    i = 1
  end 
  while i < array.length  
    sum = yield(sum, array[i])
    i += 1
  end 
  
  
  
  return sum 
end 