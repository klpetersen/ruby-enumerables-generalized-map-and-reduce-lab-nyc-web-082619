def map(array)
  i = 0 
  array2 = []
  while i < array.length do
   array2.push(yield(array[i]))
   i += 1
  end
  array2
end

def reduce(array, starting_value = 0)
  i = 0 
  while i < array.length do
    yield(starting_value += array[i])
    i += 1
  end
  starting_value
end 