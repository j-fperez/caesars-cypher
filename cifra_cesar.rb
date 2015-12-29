# limite izquierda: A = 65
# limite derecha:   Z = 90
# espacio = 32

def cesar_cifra(encrypted_sentence, shift)
	sentence = encrypted_sentence.chars
	left_limit = 65
	right_limit = 90
	new_sentence=[]
	for letter in sentence
		if letter.ord == 32
			new_sentence.push letter
		elsif (letter.ord+shift) < 65
			new_sentence.push ((letter.ord+shift)+26).chr
		elsif (letter.ord+shift) > 90
			new_sentence.push ((letter.ord+shift)-26).chr
		else
			new_sentence.push (letter.ord+shift).chr
		end
	end
	print "El mensaje descifrado es: #{new_sentence.join}\n"
end

print "Introduzca el mensaje cifrado: "
encrypted_sentence = gets.chomp.upcase
print "Introduce el desplazamiento: "
shift = gets.chomp.to_i
if shift == -3
else
	puts "se cambia el desplazamiento introducido al desplazamiento por defecto"
	shift = -3
end
cesar_cifra(encrypted_sentence, shift)