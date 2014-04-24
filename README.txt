Diffi-Helman bruteforce.

To build:
	make

To run:
	./dh-bruteforce THREADS p q a b

	The key will be: p ^ (a * b) % q.
	a, b -- private keys of Alice and Bob,
	p, q -- prime numbers.

For example try:
	./dh-bruteforce 4 137 113 1422 3839
	./dh-bruteforce 4 137 113 142248 3839348
	./dh-bruteforce 4 137 113 142248 3839348
	./dh-bruteforce 4 6911 7823 142248875 3839348553
	./dh-bruteforce 4 6911 7823 14224887554643232344 3839348553867765637
	./dh-bruteforce 4 105107 10000019 14224887554643232344 3839348553867765637
	
To clear:
	make clear
