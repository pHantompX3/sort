#https://www.youtube.com/watch?v=aw9wHbFTnAQ 

# makefile version 1.0.09.08.2018

CFLAGS=-std=c++14 -c -g -Wall

	
sort: sort.o
	@printf "\033[36mLinking \"sort\"...\n\033[0m"
	g++ sort.o -o sort.out
	@printf "\n\033[34mRun by typing 'make run'\n\n\033[0m"

sort.o: sort.cpp
	@printf "\033[36mCompiling \"sort\"...\n\033[0m"
	g++ $(CFLAGS) sort.cpp

# ...................................................................

# get the data needed 
data:
	@bash gendata
# ...................................................................
run:
	@./sort.out

# ...................................................................

# remove temp files

clean:
	rm -f *.out *.o 


