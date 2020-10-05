def echo str
  str
end

def shout str
  str.upcase
end

def repeat str, rep=2
  new_str = []
  rep.times do
    new_str << str
  end
  return new_str.join(" ")
end

def start_of_word str, index
  str[(0..index-1)]
end

def first_word str
  str.split(" ")[0]
end

def titleize str
  new_str = []
  str.split.map do |wrd|
    if wrd != "and" && wrd != "or" && wrd != "the"
      new_str << wrd.capitalize
    else
      new_str << wrd
    end
  end
  new_str[0] = new_str[0].capitalize
  return new_str.join(" ")
end

puts titleize "the bridge over the river kwai"
