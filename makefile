# Compiler
CXX = g++

# Compiler flags
CXXFLAGS = -Wall -g

# Libraries
LIBS = -lraylib -lGL -lm -lpthread -ldl -lrt -lX11

# Source files
SRC = main.cpp grid.cpp colors.cpp position.cpp block.cpp blocks.cpp game.cpp

# Output binary
TARGET = main

# Default rule
all: $(TARGET)

# Linking and building the final binary
$(TARGET): $(SRC)
	$(CXX) $(CXXFLAGS) $(SRC) -o $(TARGET) $(LIBS)

# Run the program
run: $(TARGET)
	./$(TARGET)

# Clean build files
clean:
	rm -f $(TARGET)
