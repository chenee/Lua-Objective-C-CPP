all: toluaTest.cpp
#	g++ -g3 -o test Test.cpp toluaTest.cpp main.cpp -ltolua++ -llua
	g++ -g3 -o test toluaTest.cpp main.cpp -ltolua++ -llua

toluaTest.cpp:
	tolua++ -o toluaTest.cpp toluaTest.pkg

clean:
	rm toluaTest.cpp
	rm -R *dSYM *out test
