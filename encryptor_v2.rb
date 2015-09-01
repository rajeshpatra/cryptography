class Cryptography
	def cipher(rotation)

		# .to_a it stores in an array
		# ('a'..'z') it's the format in ruby to write out between them
		characters = ('a'..'z').to_a
		#.rotate it shuffles after given characters
		rotated_characters = characters.rotate(rotation)
		# .zip for like zip works, it binds. And Hash[] it stores them.
		Hash[characters.zip(rotated_characters)]
	end

	def encrypt_letter(letter)
		rotation = 13
		cipher_for_rotation = cipher(rotation)
		cipher_for_rotation[letter]
	end

	def encrypt(string)
		# .split("") here ("") is the argument so it splits every letter
		letters = string.split("")
   		
   		# .collect method works and stores to results saving to write results = [] and using .each metod.
		results = letters.collect do |letter|
			encrypted_letter = encrypt_letter(letter)
		end

		# .join to form a string from array
		results.join
	end

	def decrypt_letter(letter)
		lowercase_letter = letter.downcase
		cipher[lowercase_letter]
	end

	def decrypt(string)
		letters = string.split("")

		results = letters.collect do |letter|
			decrypted_letter = decrypt_letter(letter)
		end

		results.join
	end
end