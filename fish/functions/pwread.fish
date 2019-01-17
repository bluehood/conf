function pwread
	openssl enc -d -aes-256-cbc -pbkdf2 -in ~/.pw
end
