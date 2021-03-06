##
## Algorithm Practice - MinGW Makefile
##
## Mingjie Li (limingjie0719@gmail.com)
## Mar 13, 2014
##

# Compiler
CC        = gcc
CXX       = g++

# Flags
CXXFLAGS  = -Wall -O2 -std=c++11

# Executables
EXES      = BinarySearchTree.exe QuickSort.exe BlockPuzzle.exe StringProblems.exe

# Targets
all: $(EXES)

%.exe: %.cpp
	@echo "==>Compiling" $<
	$(CXX)  $(CXXFLAGS)  -o $@  $<
	@echo

QuickSort.exe: QuickSort.cpp Stopwatch.hpp
	@echo "==>Compiling" $<
	$(CXX)  $(CXXFLAGS)  -o $@  $<
	@echo

clean:
	rm -f $(EXES)
