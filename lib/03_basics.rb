def who_is_bigger(a, b, c)
  if a  == nil || b  == nil || c == nil
    return "nil detected"
  elsif a > b && a > c
    return "a is bigger"
  elsif b > a && b >> c
    return "b is bigger"
  else 
    return "c is bigger"
  end
end

def reverse_upcase_noLTA str
  new_str = ""
  str.reverse.upcase.each_char do |letter| 
    if letter != "L" && letter != "T" && letter != "A"
      new_str << letter
    end
  end
  return new_str
end

def array_42 arr
  arr.include?(42)
end

# The magic_array function takes an array of number or an array of
  # array of number as parameter and return the same array :
  # - flattened (i.e. no more arrays in array)
  # - sorted
  # - with each number multiplicated by 2
  # - with each multiple of 3 removed
  # - with each number duplicate removed (any number should appear only once)
  # - sorted
  # BONUS : You can do this in one line less than 55 chars
def magic_array arr
  arr.flatten.sort.filter_map {|i| i*2 if (i*2)%3 != 0}.uniq
end
