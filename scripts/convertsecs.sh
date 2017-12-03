#!/bin/bash
# convert amount of seconds to human-readable duration

((d=${1}/86400))
((h=${1}%86400/3600))
((m=(${1}%3600)/60))
((s=${1}%60))

(($d > 0)) && echo -n "${d}d "
(($h > 0)) && echo -n "${h}h "
(($m > 0)) && echo -n "${m}m "
(($s > 0)) && echo -n "${s}s"
echo ""
