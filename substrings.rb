dictionary = [ "below", "low", "go", "downlow", "below", "going" ]

def substrings(string, dictionary)
  string = string.downcase
  number = string.split(' ').reduce(Hash.new(0)) do |object, word|
    dictionary.each {|element| object[element] += 1 if word.include?(element) }
    object
  end
  return number
end 

p substrings("below", dictionary)