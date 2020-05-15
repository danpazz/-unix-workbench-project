README.md: guessinggame.sh
	echo "Title of the project: guessinggame.sh\n" > README.md
	echo  "Date: `date +%m-%d-%Y`\n" >> README.md
	echo "Time: `date +%T`\n" >> README.md
	echo "Number of lines: $(shell wc -l guessinggame.sh | egrep -o "[0-9]+")" >> README.md 
