#!/usr/bin/env bash
# FILE: guessinggame.sh

check(){
	if (("$1" > "$2"))
	then
		echo "Your guess was too high! make another guess."
		echo "."
		echo "."
		echo "."
		echo "."
	elif (("$1" < "$2"))
	then
		echo "Your guess was too low! make another guess."
		echo "."
		echo "."
		echo "."
		echo "."
	else
		echo "Congratulations!!! you have made the correct guess!"
	fi
}
actual_number=$(ls -l | wc -l)
let actual_number=$actual_number
guessed_numebr=0
while [ "$guessed_number" != "$actual_number" ]
do
	echo "How many files are in the current directory? make a guess!"
	read guessed_number
	echo "You have guessed: $guessed_number"
	actual_number=$(ls -l | wc -l)
	let actual_number=$actual_number-1
	check "$guessed_number" "$actual_number"
done
