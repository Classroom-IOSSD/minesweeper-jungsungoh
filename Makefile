CC = gcc
OBJS = conio.o minesweeper.o
CFLAGS = -g -Wall
TARGET = conio
HEADERS = conio.h
all: $(TARGET)

$(TARGET): $(OBJS) 
	$(CC) -o $@ $^
%.o: %.c
	$(CC) -o $*.o $(CFLAGS) -c $<
$(OBJS): $(HEADERS)

clean:
	$(RM) $(OBJS) $(TARGET)


