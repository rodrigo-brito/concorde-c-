CXX= g++
CONCORDE=/opt/concorde
QSOPT=/opt/qsopt64
CPPFLAGS= -w -m64
LIBFLAGS= -I$(QSOPT) -I$(CONCORDE) -L$(CONCORDE) -L$(QSOPT) -lconcorde -lqsopt -lm -lpthread

all:
		$(CXX) src/main.cpp -o bin/main $(LIBFLAGS) $(CPPFLAGS)
		@echo "-- DONE --"
run:
		./bin/main
