%option noyywrap
%option nounput
%{
#include <iostream>
#include <cstdlib>
#include <string>
#include <set>
#include <map>
#include "Set.hpp"

using namespace std;

#include "parser.tab.hpp"



%}



%%
"print" {return print_token;}
[A-Za-z]+[A-Za-z0-9]* {yylval.s= new string(yytext); return id_token;}
[+-]?[0-9]+(\.[0-9]*)? {yylval.d= atof(yytext); return num_token;}
[={};,] {return *yytext;}
\.\. {return oddo_token;}
[ \t\n] {}
. {
cerr<<"Leksicka greska, nepoznat karakter "<<*yytext<<endl;
exit(EXIT_FAILURE);
}




%%