dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

strings = "Howdy partner, sit down! How's it going?"

def substring(string, dictionary, substringHash)
  dictionary.each do |word| 
    if string.downcase.include?(word)
      if substringHash[word]
        substringHash[word] += 1
      else
        substringHash[word] = 1
      end
    end
  end
  substringHash
end

def substrings (strings, dictionary)
  substringHash = {}
  strings.split().each do |string|
    substring(string, dictionary, substringHash)
  end
  substringHash
end 

p substrings(strings, dictionary)