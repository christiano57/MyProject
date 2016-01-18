class Lexiconomitron
	#input string and character to remove
	def eat_t(str)
		str.gsub!( /[tT]/ ,  "")
	end

	def shazam(arr_of_words)
		invert = arr_of_words.each { |word| word.reverse!}
	    [eat_t(invert[0]), eat_t(invert[invert.length - 1])]
	end
	def oompa_loompa(arr_of_words)
		 arr_of_words.delete_if { |word| word.length > 3}
		
	end
end

