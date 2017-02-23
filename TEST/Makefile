#
# The Makefile for the X11 Tests
#

######

PATSCC=${PATSHOME}/bin/patscc -DATS_MEMALLOC_LIBC
PATSOPT=${PATSHOME}/bin/patsopt

######

all:: test00

######

SOURCES += ./test00.dats

######

test00: $(SOURCES) ; $(PATSCC) -o $@ $^

######

clean:: ; rm -f *~
clean:: ; rm -f *_?ats.c
clean:: ; rm -f *_?ats.o

######

cleanall:: clean
cleanall:: ; rm -f test00

# End of [Makefile] #
