#!/bin/bash

echo =====
echo Z01 TEST

[ -n "$1" ] && m=$1 || m=123456

zi=$(mktemp -u)
mkfifo -m 600 $zi
zo=$(mktemp -u)
mkfifo -m 600 $zo

exec stdbuf -o0 ./z05 < $zi | stdbuf -i0 -o0 tr '?' '\n' > $zo &
p=$!

exec 8< $zo 9> $zi

read a <&8
echo "$a"
echo "(thinking $m)"
g=0
n=-1
while read a <&8; do
n=${a//[^0-9]/}
echo "$a"
[[ $n -eq $m && $a =~ Pomyslana ]] && continue
[ $n -eq $m ] && echo "($n - YES)" && echo y >&9
[ $n -lt $m ] && echo "($n - too small)" && echo s >&9
[ $n -gt $m ] && echo "($n - too big)" && echo b >&9
((g++))
done
echo "($g questions asked)"
[ $n -eq $m ] && echo "(TEST PASSED)" || (echo "(TEST FAILED)" && exit 1)

