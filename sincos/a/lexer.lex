%option noyywrap
%option nounput

%{

#include<iostream>
#include<cstdlib>

using namespace std;

#include"parser.tab.hpp"

%}

%%

"value" { return value_token; }
"sin" { return sin_token; }
"cos" { return cos_token; }
[0-9]+(\.[0-9]+)? { yylval.d = atof(yytext); return num_token; }
[+*/()\"-] { return *yytext; }
[ \n\t] { }
. { cerr << "Leksicka greska: nepoznat karakter " << *yytext << endl;
exit(EXIT_FAILURE);
}

%%
