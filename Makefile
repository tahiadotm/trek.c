CC = clang
CFLAGS = -Wall -Wextra -std=c17 $(shell sdl2-config --cflags)
LIBS = $(shell sdl2-config --libs)

SRC = src/main.c
OBJ = $(SRC:.c=.o)
TARGET = trek

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CC) $(OBJ) -o $(TARGET) $(LIBS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(TARGET)
