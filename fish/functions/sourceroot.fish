# Defined in - @ line 2
function sourceroot
	set nargs (count $argv)
    if math "$nargs > 1" >/dev/null
        echo "too many arguments" >&2
        return 1
    end
    set rootbld $argv[1]
    set -q rootbld[1]
    or set rootbld "root_build"
    set thisroot "~/ROOT/$rootbld/bin/thisroot.sh"
    echo "sourcing $thisroot"
    bash -c "source $thisroot && fish"
end
