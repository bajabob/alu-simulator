all: Gates.o BinFunctions.o ByteFunctions.o Test.o Registry.o
	g++-4.7 -std=c++11 Test.o Gates.o BinFunctions.o ByteFunctions.o Registry.o -o test
	
Gates.o: binary/Gates.cpp
	g++-4.7 -std=c++11 -c binary/Gates.cpp
	
BinFunctions.o: binary/BinFunctions.cpp
	g++-4.7 -std=c++11 -c binary/BinFunctions.cpp
	
ByteFunctions.o: byte/ByteFunctions.cpp
	g++-4.7 -std=c++11 -c byte/ByteFunctions.cpp
	
Registry.o: registry/Registry.cpp
	g++-4.7 -std=c++11 -c registry/Registry.cpp
	
Test.o: Test.cpp
	g++-4.7 -std=c++11 -c Test.cpp
	
clean:
	rm *.o test
