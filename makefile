# compiler
CC = gcc
CFLAGS = -Wall
LDLIBS  = -lraylib -lGL -lm -lpthread -ldl -lrt -lX11
COMPILE.c = $(CC) $(CFLAGS) -c -o $@

# dirs
OUTPUT = build
OBJ = obj
SRC = src

# files
OBJECTS := $(wildcard $(SRC)/*.c)
HEADERS := $(wildcard $(SRC)/*.h)
OBJECTS := $(patsubst $(SRC)/%.c, $(OBJ)/%.o, $(wildcard $(SRC)/*.c))
PROG = $(OUTPUT)/pong 

all: $(PROG)
	echo "objs: $(OBJECTS)"

$(OUTPUT):
	mkdir -p $(OUTPUT)

$(OBJ):
	mkdir -p $(OBJ)

$(PROG): $(OBJECTS) $(OUTPUT)
	$(CC) $(CFLAGS) $(OBJECTS) -o $@ $(LDLIBS)

$(OBJ)/%.o: $(SRC)/%.c $(OBJ)
	$(COMPILE.c) $<

run: $(PROG)
	./$(PROG)

clean:
	rm -f $(OUTPUT)/* $(OBJ)/* && rmdir $(OUTPUT) $(OBJ)
