def substrings(string, dictionary)
  dictionary.reduce(Hash.new(0)) do |hash, substring|
    if string.include?(substring)
      hash[substring] += 1
    end
    hash
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("Howdy partner, sit down! How's it going?", dictionary)

