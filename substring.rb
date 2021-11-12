dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings(test, dictionary)
	counter = 0
	hash = {}
	while dictionary.length() > counter
		if test.downcase.include? dictionary[counter]
			hash[dictionary[counter]] = test.downcase.scan(dictionary[counter]).length
		end
		counter += 1
	end
	puts hash
end
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)