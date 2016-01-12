 
def wordSort(sentence)

sentence.gsub!(/[^a-z0-9\s]/i, '')

sentence_array = sentence.split

sentence_array.sort_by { |y| y.downcase }

end

string_to_sort = "Fools! fall, for ?foolish follies."

print wordSort(string_to_sort)
