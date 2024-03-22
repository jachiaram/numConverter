#this Makefile follows a template that was given to me in 310, most Makefiles for projects will follow a similar format.
OBJS = BaseNumber.o
EXE = calculator 
CC = g++
CFLAGS += -g -c -Wall -Werror -std=c++17
LFLAGS += -Wall

.PHONY: all $(EXE) clean

all: $(EXE)

$(EXE): main.o $(OBJS)
	$(CC) $(LFLAGS) main.o $(OBJS) -o $(EXE)

main.o: BaseNumber.h
	$(CC) $(CFLAGS) main.cpp

BaseNumber.o: BaseNumber.h
	$(CC) $(CFLAGS) BaseNumber.cpp

clean:
	rm -f *.o $(EXE)
