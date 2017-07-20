class PigLatinizer

  	def piglatinize(word)
		word = word.split("")
		alpha = ('a'..'z').to_a
		vowels = %w[a e i o u]
		consonants = alpha - vowels
		if vowels.include?(word[0].downcase)
			return "#{word.join("")}way"
		elsif consonants.include?(word[0].downcase)
			until vowels.include?(word[0].downcase)
				word.rotate!(1)
			end
			return "#{word.join('')}ay"
		end		
	end

  	def to_pig_latin(phrase)
  		phrase = phrase.split(" ")	
		phrase.map! do |word|
			piglatinize(word)
		end
		phrase.join(' ')
  	end
end	