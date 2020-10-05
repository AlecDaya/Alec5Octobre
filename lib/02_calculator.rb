def add num1, num2
  return num1 + num2
end

def subtract num1, num2
    return num1 - num2
end

def sum arr
  res = 0
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    arr.each do |i| 
      res += i
    end
    return res
  end
end

def multiply num1, num2
  return num1 * num2
end

def power num1, num2
  return num1 ** num2
end

def factorial num
  res = 1
  if num == 0
    return 0
  elsif num == 1
    return 1
  else 
    (1...num).each do |i|
      res = res * (i+1)
    end
    return res
  end
end
