#!/bin/bash


fif () {

if [[ ! -d .bkup ]]
then
	mkdir .bkup
fi

if [[ -f "$1.bash" ]]
then
	mv -fv "$1.bash" "./.bkup/$1.bkup"
fi

}

retemp () {

if [[ -f temp ]]
then
mv -fv temp "$1"
fi

}

scryd () {

find . -type d |tail -n +2

}

