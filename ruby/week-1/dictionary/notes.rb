require 'ruby-dictionary'

class Words
	attr_accessor :dictionary
	def initialize(word1, word2)
		@word1 = word1
		@word2 = word2
		@dictionary = Dictionary.from_file('/usr/share/dict/words')
	end

	def letter_cycle
		position = 0
		wordx = @word1.split("")
		wordy = @word2.split("")
		fake_word = wordx.join
	while wordx != wordy
		if position >= wordx.length
			position = 0
		else
			if wordx[position] != wordy[position]
				fake_word[position] = wordy[position]
				if @dictionary.exists?(fake_word) != true
					fake_word = wordx.join
					position += 1
				else
					wordx[position] = wordy[position]
					position += 1
				end
			end
			p wordx.join
		end
	end
	end
end

problem1 = Words.new("cat", "dog")
#problem2 = Words.new("fish", "duct")
# dictionary = Dictionary.from_file('/usr/share/dict/words')
problem1.letter_cycle
"\n"
#problem2.letter_cycle


# word1 = dictionary.exists?(user_input) #first word

# if true .push into words

# word2 = dictionary.exists?(user_input) #last word

# if true .push into words

# if word1.length == word2.length
# end

# word1_arr = word.chars.to_a

# word1_arr = ["d", "o", "g"]

# if word1_arr.each { | letter | 
     
# 	 }