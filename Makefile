# Makefile
# Cameron Peete
# COSC 3750 Spring 2025
# Homework 3
# 02/10/2025
#
#Creating a Makefile to complile provided files

CC=gcc
CFLAGS=-ggdb -I ""

#.PHONY:

#other:

prompt: prompt.h prompt.c
	$(CC) $(CFLAGS) prompt.h prompt.c -c prompt.o
