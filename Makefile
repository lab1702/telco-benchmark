all:	telco telco5

telco:	telco.cob
	cobc -Wall -O2 -x telco.cob

telco5:	telco5.cob
	cobc -Wall -O2 -x telco5.cob

run:	all
	echo "Y" | ./telco
	echo "Y" | ./telco5

nocalc:	all
	echo "N" | ./telco
	echo "N" | ./telco5

clean:
	rm -f telco telco5 TELCO.TXT TELCO5.TXT
