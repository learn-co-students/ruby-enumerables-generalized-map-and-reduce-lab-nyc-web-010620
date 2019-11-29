def map(array)
  new_arr = []
  i = 0
    while i < array.length do 
      new_arr.push(yield(array[i]))
        i += 1 
    end 
  return new_arr
end 

def reduce(array, sv = nil)
  if sv 
    sum = sv 
    i = 0 
  else 
    sum = array[0]
    i = 1
  end
    while i < array.length do 
      sum  = yield(sum, array[i])
    i += 1
    end 
  return sum
end 