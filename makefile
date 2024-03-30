# CMPT201-X02L  

CC=gcc
CFLAGS=-Wall -g -std=c11 

TARGET=Skyfall

OBJS=npc.o

all: $(TARGET)


$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $^ -o $@ 

npc.o: npc.c  npc.h 
	$(CC) $(CFLAGS) -c $<

Debug: $(OBJ) 
	$(CC) $(CFLAGS) $^ -o $@

.PHONY: clean Debugger

clean:
	rm -f $(TARGET) $(OBJS) Debug

Debugger:
	gdb Debug

