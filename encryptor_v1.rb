class Cryptography
	def cipher
		rotation = 13
		characters = ('a'..'z').to_a
		rotated_characters = characters.rotate(rotation)
		Hash[characters.zip(rotated_characters)]
	end

	def encrypt_letter(letter)
		lowercase_letter = letter.downcase
		cipher[lowercase_letter]
	end

	def encrypt(string)
		letters = string.split("")

		results = letters.collect do |letter|
			encrypted_letter = encrypt_letter(letter)
		end

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