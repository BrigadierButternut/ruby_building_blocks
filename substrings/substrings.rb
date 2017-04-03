#substrings should take a word and a "dictionary" and return as a hash how many times that word OR one of its substrings appears in the dictionary.
#Should be able to hold a string with multiple words
def substring(string,dictionary)
  #creating a new hash to store the substrings and the times they appear in the string
  subHash = Hash.new
  #For each word in the dictionary, scan for matches in the string
  dictionary.each do |word|
    new_value = string.scan(word).count
    if new_value > 0
      new_key = string.scan(word)[0]
      subHash[new_key] = new_value
    end
  end
  return subHash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substring("Howdy partner, sit down! How's it going?", dictionary)
