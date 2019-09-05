# Your Code Here
def map(array)
  new = []
  i = 0 
    while i < array.length do 
    new.push(yield(array[i]))
     i += 1 
  end 
  return new 
end

def reduce(array, staring_value = 0)
    if staring_value
      num1 = staring_value
      i = 0 
    else 
      num1 = array[0]
      i = 1 
      yield(array[i] += staring_value)
    end 
  while i < array.length do
   num1 = yield(num1, array[i])
   i += 1 
  end 
  num1
end 