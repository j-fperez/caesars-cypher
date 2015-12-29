def cesar_cifra(encrypted_word)
	letter_by_letter = encrypted_word.chars
	deciphered_message=[]
	deciphered_word=""
	letter_by_letter.each do |letter|
		if letter.ord == 97
			new_letter = "z"
		else
			new_letter = (letter.ord-1).chr
		end
		deciphered_message.push new_letter
	end
	deciphered_word = deciphered_message.join
	print "El mensaje descifrado es: #{deciphered_word}\n"
end

print "Introduzca el mensaje cifrado: "
encrypted_word = gets.chomp
cesar_cifra(encrypted_word)