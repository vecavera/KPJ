%option noyywrap
%option nounput

%{

#include<iostream>
#include<cstdlib>
#include "funkcija.hpp"

using namespace std;

#include"parser.tab.hpp"

%}

%%

"sin" { return sin_token; }
"cos" { return cos_token; }
"function" {return funkcija_token;}
"x" {return x_token;}
[a-wyz] {yylval.s= new string(yytext);return id_token;}
[0-9]+(\.[0-9]+)? { yylval.d = atof(yytext); return num_token; }
[+*/()\"=-] { return *yytext; }
[ \n\t] { }
. { cerr << "Leksicka greska: nepoznat karakter " << *yytext << endl;
exit(EXIT_FAILURE);
}

%%
