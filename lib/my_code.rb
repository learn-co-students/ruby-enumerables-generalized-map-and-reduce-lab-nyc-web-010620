# Your Code Here
def map(array)
  new_array = [] 
  index = 0 
  
  while index < array.count do 
    new_array.push(yield(array[index]))
    index += 1 
  end 
  new_array
end 

def reduce(array, starting_value = nil)
  
  if starting_value
    sum = starting_value
    index = 0 
  else 
    sum = array[0]
    index = 1 
  end 
   
  while index < array.count do 
    sum = yield(sum, array[index])
    index += 1 
  end 
   sum 

  
end 
  
