@anagram_words=[]

def anagrams(word)
	letter_array = word.split(//)
	anagram_word_letters = []
	letter_array.each do |letter|
		index=rand(0..letter_array.length-1)
		until(anagram_word_letters[index] == nil)
			index = rand(0..letter_array.length-1)
		end 
		anagram_word_letters[index] = letter
	end
	new_word = anagram_word_letters.join()
	@anagram_words.push(new_word) unless @anagram_words.include?(new_word)
end 

puts "Enter a word you would like to jumble up: "
word = gets.chomp 

word.length.times do
	anagrams(word)
end

puts @anagram_words