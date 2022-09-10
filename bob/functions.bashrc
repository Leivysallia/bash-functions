#!/bin/bash

mvf () {

mv -fv

}

fif () {

if [[ ! -d bkup ]]
then
mkdir bkup
fi

if [[ -f $1.bash ]]
then
mvf $1.bash bkup/$1.bkup
fi

}
