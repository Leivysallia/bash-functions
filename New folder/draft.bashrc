#!/bin/bash

doit () {

mkdir $1
cd $1

wait

cat /dev/null > functions.bashrc
cat /dev/null > vars.bashrc
cat /dev/null > alias.bashrc
cat /dev/null > $1.sh

echo $'#!/bin/bash' >> functions.bashrc
echo $'mvf () {' >> functions.bashrc
echo $'mv -fv' >> functions.bashrc
echo $'}' >> functions.bashrc
echo $'fif () {' >> functions.bashrc
echo $'if [[ ! -d bkup ]]' >> functions.bashrc
echo $'then' >> functions.bashrc
echo $'mkdir bkup' >> functions.bashrc
echo $'fi' >> functions.bashrc
echo $'if [[ -f $1.bash ]]' >> functions.bashrc
echo $'then' >> functions.bashrc
echo $'mvf $1.bash bkup/$1.bkup' >> functions.bashrc
echo $'fi' >> functions.bashrc
echo $'}' >> functions.bashrc


echo $'#!/bin/bash' >> vars.bashrc
echo $'RANDOM=$( date +%N )' >> vars.bashrc


echo $'#!/bin/bash' >> $1.sh
echo $'shopt -s nullglob globstar' >> $1.sh
echo $'source alias.bashrc' >> $1.sh
echo $'source functions.bashrc' >> $1.sh
echo $'source vars.bashrc' >> $1.sh

echo $'#!/bin/bash' >> alias.bashrc

}

