#!/bin/bash

declare -A matrixA
declare -A matrixB

clear

echo -n row number\:' '
read rows
echo -n col number\:' '
read cols

echo
echo MATRIX 1
for((row=1;row<=rows;row++))
do
	for((col=1;col<=cols;col++))
	do
		echo Row $row - Column $col
		echo -n Value\:' '
		read value
		matrixA[$row,$col]=$value
	done
done

echo
echo MATRIX 2
for((row=1;row<=rows;row++))
do
	for((col=1;col<=cols;col++))
	do
		echo Row $row - Column $col
		echo -n Value\:' '
		read value
		matrixB[$row,$col]=$value
	done
done

clear

echo Matrix 1
echo
for((row=1;row<=rows;row++))
do
	for((col=1;col<=cols;col++))
	do
		echo -n ${matrixA[$row,$col]}' '
	done
	echo
done

echo
echo ------------
echo
echo Matrix 2
echo
for((row=1;row<=rows;row++))
do
	for((col=1;col<=cols;col++))
	do
		echo -n ${matrixB[$row,$col]}' '
	done
	echo
done

echo
echo ------------
echo
echo Add
echo
for((row=1;row<=rows;row++))
do
	for((col=1;col<=cols;col++))
	do
		echo -n `expr ${matrixA[$row,$col]} + ${matrixB[$row,$col]}`' '
	done
	echo
done

echo
echo ------------
echo
echo Subtrat
echo
for((row=1;row<=rows;row++))
do
	for((col=1;col<=cols;col++))
	do
		echo -n `expr ${matrixA[$row,$col]} - ${matrixB[$row,$col]}`' '
	done
	echo
done
