def map(array)
  i = 0 
  array2 = []
  while i < array.length do
   array2.push(yield(array[i]))
   i += 1
  end
  array2
end

def reduce(array, sv = nil)
    if sv
      sum = sv
      i = 0 
    else 
      sum = array[0]
      i = 1
    end
    while i < array.length
      sum = yield(sum, array[i])
      i += 1
    end
    sum 
end
  