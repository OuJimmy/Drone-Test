CC=arm-linux-gnueabihf-gcc
CCFLAGS=-Wall
LDFLAGS=
SOURCES=$(wildcard src/*.c)
OBJECTS=$(SOURCES:.c=.o)
TARGET=main

all: $(TARGET)

$(TARGET): $(OBJECTS)
		$(CC) -o $@ $^ $(LDFLAGS)

%.o: %.c %.h
		$(CC) $(CCFLAGS) -c $< -o $@

%.o: %.c
		$(CC) $(CCFLAGS) -c $< -o $@

clean:
		rm -f src/*.o $(TARGET)
