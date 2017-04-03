#This project deals with building a ceaser cipher, whereby all letters are replaced by another letter some fixed distance away

def caesar_cipher(sentance,shift)
  #creating array of alphabet letters
  alphabet = ('a'...'z').to_a
  #split sentance into words (important so whitespace can be maintained in end result)
  words = sentance.split
  #Creating new array to stuff encrypted sentance into
  new_sentence = []
  #for each word, split up into an array of letters
  words.each do |word|
    #putting the word in downcase just to make things simpler
    word.downcase
    letters = word.split("")
    #creating a new word array for each encrypted word
    new_word = []
    #for each letter, find its index in the alphabet array
    letters.each do |letter|
      old_index = alphabet.find_index(letter)
      #find index of encrypted letter
      new_index = old_index + shift
      #if the new index value is greater than 25, loop around to front of alphabet
      if new_index > 25
        new_index = (new_index % 26) - 1
      end #end of if statement
      #using new index, replace old letter with the encrypted letter
      new_word.push(alphabet[new_index])
    end #end of letter block
    #recombine the new letter array into a word
    new_sentence.push(new_word.join)
  end #end of word block
  #recombine the word array into a sentance
  return new_sentence.join(" ")
end #end of caesar_cipher definition
