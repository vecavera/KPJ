program: lex.yy.o parser.tab.o
	g++ -Wall -o $@ $^
lex.yy.o: lex.yy.c parser.tab.hpp element.hpp
	g++ -Wall -Wno-sign-compare -c -o $@ $<
parser.tab.o: parser.tab.cpp parser.tab.hpp element.hpp
	g++ -Wall -c -o $@ $<
lex.yy.c: lexer.lex
	flex $<
parser.tab.cpp parser.tab.hpp: parser.ypp
	bison -d -v $<
