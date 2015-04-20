require_relative 'reverse_letters'

def find_anagram(word)
  word_array = word.chars
  length = word_array.length

  rev_array = reverse_letters(word_array)

  anagrams = Array.new

  length.times do 
    first_letter = word_array.first
    word_array.shift
    word_array.push(first_letter)
    anagrams.push(word_array * "")
    anagrams.push(word_array.reverse * "")
  end

  p anagrams

end

find_anagram("abc")
