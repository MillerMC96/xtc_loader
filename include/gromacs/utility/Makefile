# Target library
lib := utility.a
objs := alignedallocator.o baseversion.o cstringutil.o  fatalerror.o  futil.o  gmxassert.o  matio.o  smalloc.o  stringutil.o

CC := g++
AR := ar
AROPTIONS := rcs
CFLAGS := -Wall -Werror

# Include path
INCLUDE := -I ../../../include/

# Current directory
CUR_PWD := $(shell pwd)

## Debug flag
ifneq ($(D),1)
CFLAGS	+= -O2
else
CFLAGS	+= -O0
CFLAGS	+= -g
endif

# Suppressing GCC commands
ifneq ($(V),1)
Q = @
V = 0
endif

deps := $(patsubst %.o,%.d,$(objs))
-include $(deps)

all: $(lib)

$(lib): $(objs)
	@echo "AR	$@"
	$(Q)$(AR) $(AROPTIONS) $@ $^
%.o: %.cpp
	@echo "CC	$@"
	$(Q)$(CC) $(CFLAGS) $(INCLUDE) -c -o $@ $<
clean:
	@echo "CLEAN	$(CUR_PWD)"
	$(Q)rm -rf *.o $(lib)
