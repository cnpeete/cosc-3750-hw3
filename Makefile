# Makefile
# Cameron Peete
# COSC 3750 Spring 2025
# Homework 3
# 02/10/2025
#
#Creating a Makefile to complile provided files

CC=gcc
CFLAGS=-ggdb -I.

#.PHONY:

#other:

prompt.o: prompt.c prompt.h
	$(CC) $(CFLAGS) -c prompt.c -o prompt.o

compute.o: compute.c compute.h
	$(CC) $(CFLAGS) -c compute.c -o compute.o

display.o: display.c display.h
	$(CC) $(CFLAGS) -c display.c -o display.o

approxe: approxe.c prompt.o compute.o display.o
	$(CC) $(CFLAGS) -c approxe.c -o approxe
