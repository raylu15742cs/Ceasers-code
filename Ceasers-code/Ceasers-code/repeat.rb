def sipher(string,value)
    counter = 0
	test = ''
    while string.length > counter 
        if string[counter].match?(/[A-Za-z]/)
            # checks if it is letter or not
			pre = string[counter].ord
            #check if lower or upper case
			if pre <= 122 && pre >= 97
                ptest = pre + value
                if ptest > 122
                    ptest -=122
                    ptest += 96
                    test += ptest.chr
                else
                    test += ptest.chr
                end
            end
            if pre <= 90 && pre >= 65
                ptest = pre + value
                if ptest > 90
                    ptest -=90
                    ptest += 64
                    test += ptest.chr
                else
                    test += ptest.chr
                end
            end
            counter += 1
        else 
            test += string[counter]
            counter += 1
        end
	end
	puts test
end

sipher("ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmnopqrstuvwxyz", 1)