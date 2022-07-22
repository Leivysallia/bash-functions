#!/bin/bash

fif () {

if [[ -f $1.bash ]]
then
mv $1.bash $1.bkup
cat /dev/null > $1.bash
fi

}
