# Defined in /tmp/fish.ieBQZP/sourceroot.fish @ line 2
function sourceroot
	set nargs (count $argv)
    if [ $nargs -gt 1 ]
        echo "too many arguments" >&2
        return 1
    else if [ $nargs -eq 1 ]
        set rootbld $argv[1]
    else
        set rootbld "build"
    end
    set thisroot ~/Work/ROOT/{$rootbld}/bin/thisroot.fish
    echo "sourcing $thisroot"
    source {$thisroot}
end
