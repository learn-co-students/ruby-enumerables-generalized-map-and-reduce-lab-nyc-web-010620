# Your Code Here
def map(arr)
  new = []
  i = 0 
  while i < arr.length do
  
    new.push(yield(arr[i]))
    i += 1  
  end
  return new
end

def reduce(arr, start = nil)
  i = 0
  
  if start
    ## if given a starting point 
    total = start
  else
   ## if not given a starting point
   start = arr[0];
   total = start;
   i = 1
  end
  
    while i < arr.length
        total = yield(total, arr[i])
        i += 1
    end
    total
  
end
