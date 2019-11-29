def map(array)
  new_arr = []
  i = 0
    while i < array.length do 
      new_arr.push(yield(array[i]))
        i += 1 
    end 
  return new_arr
end 