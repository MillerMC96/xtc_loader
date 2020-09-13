#Adapted from Makefile of Dr. Christopher Nitta in ECS60
AR=ar
AS=as
CPP=cpp
CXX=g++
LD=ld
OBJCOPY = objcopy
OBJDUMP = objdump
STRIP = strip

INC_DIR = ./include
SRC_DIR = ./src
OBJ_DIR = ./obj
BIN_DIR = ./bin

#DEBUG_MODE=TRUE
PKGS =
ifdef DEBUG_MODE
DEFINES += -DDEBUG
CFLAGS += -g -ggdb -D_GLIBCXX_DEBUG
endif

INCLUDE += -I $(INC_DIR)
CFLAGS += -Wall 
CPPFLAGS += -std=c++14
PROJ_NAME = test

PROJ_OBJS = $(OBJ_DIR)/test.o
all: directories $(BIN_DIR)/$(PROJ_NAME)
$(BIN_DIR)/$(PROJ_NAME): directories $(PROJ_OBJS) $(MAIN_OBJS)
	$(CXX) $(PROJ_OBJS) $(MAIN_OBJS) -o $(BIN_DIR)/$(PROJ_NAME) $(CFLAGS) $(CPPFLAGS) $(LDFLAGS)
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp
	$(CXX) $(CFLAGS) $(CPPFLAGS) $(INCLUDE) -c $< -o $@
.PHONY: directories
directories:
	mkdir -p $(OBJ_DIR)
	mkdir -p $(BIN_DIR)

.PHONY: clean_directories
clean_directories:
	rm -rf $(OBJ_DIR)
	rm -rf $(BIN_DIR)
.PHONY: clean
clean: clean_directories directories
