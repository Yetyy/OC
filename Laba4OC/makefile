CC=g++
CFLAGS=-c 
SOURCES=main.cpp calculation.h
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=myprogram

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@
clean:
	rm -f *.o *~ ${EXECUTABLE}
	rm -r ./bin/ 

install: $(EXECUTABLE)
	mkdir -p ./bin/ 
	cp "/home/yetyy/Рабочий стол/Laba4/myprogram" ./bin/
	
