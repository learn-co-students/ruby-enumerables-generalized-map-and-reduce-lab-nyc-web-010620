# Your Code Here

def map(source_array)
  out_array = []
  for each in source_array do
    out_value = yield(each)
    out_array << out_value
  end
  out_array
end

def reduce(source_array, starting_point = 0)
  out_value = starting_point
  for each in source_array do
    if each == nil
      each = false
    end
    out_value = yield(each, out_value)
  end
  out_value
end


def testy(a,h=0)
  for each in a do
    puts "h: #{h}, each: #{each}"
    h = yield(each, h)
    puts "new h: #{h}"
  end
  p h
end

testy([true,false,false]) {|h, each| h || each}