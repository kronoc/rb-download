CC?=gcc
CFLAGS?=-Wall -O2 -g

DESTDIR=/usr/local

OBJS=	list.o		\
	findmheg.o	\
	listen.o	\
	command.o	\
	stream.o	\
	assoc.o		\
	carousel.o	\
	module.o	\
	table.o		\
	dsmcc.o		\
	biop.o		\
	fs.o		\
	channels.o	\
	cache.o		\
	utils.o

ROBJS=	rb-download.o		\
	$(OBJS)

CPPFLAGS+=-MD
LDFLAGS+=-lz

TARDIR=${basename ${PWD}}

all: rb-download

rb-download:	${ROBJS}

install:	rb-download
	install -d ${DESTDIR}/bin
	install -m 755 rb-download ${DESTDIR}/bin

clean:
	${RM} rb-download *.d *.o core

tar:
	${MAKE} clean
	(cd ..; tar -zcvf ${TARDIR}.tar.gz --exclude .svn ${TARDIR})
  
-include ${ROBJS:.o=.d}


