README.md: guessinggame.sh
	echo "# Peer-graded Asssignment: Bash, Make, Git, and Github" > README.md
	#echo "---\n" >> README.md	

	echo "\n## Created " >> README.md
	date -u >> README.md

	echo "\n## Lines of code in game: " >> README.md 
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

	echo "\n---\n" >> README.md
