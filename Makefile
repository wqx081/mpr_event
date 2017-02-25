APP=myapp

CFLAGS += -I. -std=c99 -g 
CXXFLAGS += -I. -std=c++11 -g

CC=gcc
CXX=g++


OBJS := main.o ae.o zmalloc.o anet.o


all: $(APP)

# Deps
ae.o: ae.c ae.h zmalloc.h
ae_epoll.o: ae_epoll.o
anet.o: anet.c fmacros.h anet.h

main.o: main.cc ae.h anet.h

$(APP): $(OBJS)
	$(CXX) -o  $(APP) $(OBJS) -lm -lpthread

.c.o:
	$(CC) -c $(CFLAGS) $<

%.cc.o:
	$(CXX) -c $(CXXFLAGS) $<

clean:
	@rm -fr $(APP) $(OBJS)
