#ROOTCFLAGS    = $(shell root-config --cflags)
#ROOTLDFLAGS   = $(shell root-config --ldflags)
#ROOTGLIBS     = $(shell root-config --glibs)
ROOTCFLAGS    = 
ROOTLDFLAGS   = 
ROOTGLIBS     = 
#CXX=clang++
CXX=g++
RM=rm -f
CXXFLAGS=-g -std=c++17 $(ROOTCFLAGS) -I${XILINX_HLS}/include
LDFLAGS=$(ROOTLDFLAGS)
LDLIBS=$(ROOTGLIBS)

SRCS := processAPA.cxx FDHDChannelMapSP.cxx kernel.cxx myproject.cxx
OBJS := $(SRCS:.cxx=.o)


processAPA : $(OBJS)
	$(CXX) $(LDFLAGS) -o processAPA $(OBJS) $(LDLIBS)

$(OBJS): %.o: %.cxx
	$(CXX) -c $(CXXFLAGS) $< -o $@

.PHONY: clean
clean:
	$(RM) $(OBJS) processAPA

-include $(OBJS:.o=.d)
