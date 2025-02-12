# Makefile
# Cameron Peete
# COSC 3750 Spring 2025
# Homework 3
# 02/10/2025
#
#Creating a Makefile

CC=gcc
CFLAGS=-ggdb -I.

.PHONY: approxe prompt.o compute.o display.o clean tidy

#OBJS:

approxe: approxe.c prompt.o compute.o display.o
	$(CC) $(CFLAGS) approxe.c prompt.o compute.o display.o -o approxe

prompt.o: prompt.c prompt.h
	$(CC) $(CFLAGS) -c prompt.c -o prompt.o

compute.o: compute.c compute.h
	$(CC) $(CFLAGS) -c compute.c -o compute.o

display.o: display.c display.h
	$(CC) $(CFLAGS) -c display.c -o display.o

tidy:
	/bin/rm -f *.o

clean: tidy
	/bin/rm -f approxe
