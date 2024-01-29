# Define the compiler
CC = gcc

# Define any compile-time flags
CFLAGS = -g

# Define the target executable
TARGET = simple_program

# The default target
all: $(TARGET)

# Rule for building the target executable
$(TARGET): simple_program.c
	$(CC) $(CFLAGS) -o $(TARGET) simple_program.c

# Clean target to remove generated files
clean:
	rm -f $(TARGET)

# Make sure these targets are not confused with files of the same name
.PHONY: all clean
