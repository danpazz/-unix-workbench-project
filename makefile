README.md: guessinggame.sh
	echo "Title of the project: guessinggame.sh" > README.md
	echo  "Date: `date +%m-%d-%Y`" >> README.md
	echo "Time: `date +%T`" >> README.md
	echo "Number of lines: $(shell wc -l guessinggame.sh | egrep -o "[0-9]+")" >> README.md 
