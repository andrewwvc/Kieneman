# Makefile for CLISP module set pcre

CC = gcc -mno-cygwin
PCRECPPFLAGS = -I/usr/local/include
CFLAGS = -O2
INCLUDES= ..
MODPREP = ../modprep.fas

CLISP = clisp -q -norc

LN = ln

MAKE = make

SHELL = /bin/sh

DISTRIBFILES = cpcre.o link.sh Makefile pcre.lisp test.tst pcre.xml preload.lisp
distribdir =

all : pcre.fas cpcre.o

pcre.fas : pcre.lisp
	$(CLISP) -c pcre.lisp

cpcre.o : cpcre.m.c $(INCLUDES)/clisp.h config.h
	$(CC) $(CPPFLAGS) $(PCRECPPFLAGS) $(CFLAGS) -I$(INCLUDES) -c cpcre.m.c -o cpcre.o

cpcre.m.c : cpcre.c $(MODPREP)
	$(CLISP) $(MODPREP) cpcre.c

# Make a module
clisp-module : all

# Make a module distribution into $(distribdir)
clisp-module-distrib : clisp-module force
	$(LN) $(DISTRIBFILES) $(distribdir)

clean : force
	rm -f core *.o *.a

force :

