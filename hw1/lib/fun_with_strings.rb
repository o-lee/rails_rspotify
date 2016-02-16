module FunWithStrings
  def palindrome?
    #we need to make it case insensitive
    self.downcase!
    # we need to make it ignore whitespace, punctuation, and non-letter characters
    strip = self.gsub(/[^a-z]/, '')
   # check it against itself reversed
    check = strip.reverse
    if check == strip
       return true
    else 
       return false
    end
  end

  def count_words
    self.delete!("\n")
    strip = self.downcase.strip.gsub(/[^a-z\s]/,'')
    array = strip.split
    frequencies = Hash.new(0)
    array.each do |word|
      if frequencies.has_key? word
        frequencies[word] += 1
      else
        frequencies[word] = 1
     end
    end
    return frequencies
  end

  def anagram_groups
    array = self.split
    array.group_by{|string| string.downcase.chars.sort}.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
