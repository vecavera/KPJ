%option noyywrap
%option nounput

%{
#include <iostream>
#include <cstdlib>
#include <vector>
#include "element.hpp"

using namespace std;

#include "parser.tab.hpp"




%}



%%

"car" {return car_token;}
[0-9] {yylval.i = atoi(yytext); return num_token;}
[+*()'] {return *yytext;}
[ \t\n] { }
. {
cerr<<"Leksicka greska, nedozvoljen karakter "<<*yytext<<endl;
exit(EXIT_FAILURE);
}




%%