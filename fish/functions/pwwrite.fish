# Defined in - @ line 1
function pwwrite
	openssl enc -e -aes-256-cbc -in $argv[1] -out ~/.pw
end
