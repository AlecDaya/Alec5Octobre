def translate str
  vowels = ["a", "e", "i", "o", "A", "E", "I", "O"]
  arr = []
  str.split(" ").each do |word|
    if vowels.include?(word[0])
      arr << word+"ay"
    elsif !vowels.include?(word[0]) && !vowels.include?(word[1]) && !vowels.include?(word[2])
      word = word[3..-1]+word[0..2]+"ay"
      arr << word
    elsif !vowels.include?(word[0]) && !vowels.include?(word[1])
      word = word[2..-1]+word[0..1]+"ay"
      arr << word
    elsif !vowels.include?(word[0]) 
      word = word[1..-1]+word[0]+"ay"
      arr << word
    end
  end
  return arr.join(" ")

end

print translate "the quick brown fox"