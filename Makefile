all:	telco telco5

telco:	telco.cob
	cobc -Wall -O2 -x telco.cob

telco5:	telco5.cob
	cobc -Wall -O2 -x telco5.cob

run:	all
	echo "Y" | time ./telco
	echo "Y" | time ./telco5
	tail TELCO.TXT TELCO5.TXT

nocalc:	all
	echo "N" | time ./telco
	echo "N" | time ./telco5
	tail TELCO.TXT TELCO5.TXT

clean:
	rm -f telco telco5 TELCO.TXT TELCO5.TXT
