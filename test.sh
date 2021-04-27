#!/bin/bash


status=0
echoj 'fdg'
ret=$?
if ! [ $ret -eq 0 ]; then status=$ret; fi;

echo $status