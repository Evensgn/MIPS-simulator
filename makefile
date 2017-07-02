CC = g++
CFLAGS = -Wall -std=c++11 -O2

################!! MODIFY HERE !!####################
_OBJ = main.o
_DEPS = include_define.hpp utility.hpp global_class.hpp evensgn_string.hpp mips_simulator.hpp mips_text_parser.hpp mips_entry_processor.hpp mips_pipeline.hpp
#####################################################

ODIR = obj
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))

IDIR = .
DEPS = $(patsubst %,$(IDIR)/%,$(_DEPS))

$(ODIR)/%.o: %.c* $(DEPS)
	$(shell mkdir -p bin)
	$(shell mkdir -p obj)
	$(CC) -c -o $@ $< $(CFLAGS)

mips: $(OBJ)
	$(CC) -o bin/mips $^ $(CFLAGS)

.PHONY: clean all rebuild

clean:
	rm -f $(ODIR)/*
	rm -f bin/*

all:
	mips

rebuild: clean all
