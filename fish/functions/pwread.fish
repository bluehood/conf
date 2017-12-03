# Defined in - @ line 2
function pwread
	set readcmd openssl enc -d -aes-256-cbc -in ~/.pw
    set nargs (count $argv)
    if math "$nargs > 1" >/dev/null
        echo "too many arguments" >&2
        return 1
    end
    if math "$nargs == 1" >/dev/null
        eval $readcmd | grep $argv[1]
    else
        eval $readcmd
    end
end
