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

def reduce(array, sv = 0)
    if sv
      num1 = sv
      i = 0 
    else 
      num1 = array[0]
      i = 1 
      yield(array[i] += sv)
    end 
  while i < array.length do
   num1 = yield(num1, array[i])
   i += 1 
  end 
  num1
end 