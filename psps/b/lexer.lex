%option noyywrap
%option nounput

%{
#include <iostream>
#include <cstdlib>
#include <string>
#include <map>

using namespace std;

#include "parser.tab.hpp"



%}


%%
":=" {return dodela_token;}
"pocetak" {return pocetak_token;}
"kraj." {return kraj_token;}
"ispisi" {return ispisi_token;}
"mod" {return mod_token;}
"div" {return div_token;}
\"[a-zA-Z :]+\" {yylval.s = new string(yytext); return niska_token;}
[a-zA-Z]+ {yylval.s = new string(yytext); return id_token;}
[0-9]+(\.[0-9]*)? {yylval.d = atof(yytext); return num_token;}
"0x"[0-9A-F]+ {sscanf(yytext,"%x", &(yylval.d)); return num_token;}
[;+()*-] {return *yytext;}
[ \t\n] { }
. {
cerr<<"Leksicka greska, nepoznat karakter"<<*yytext;
exit(EXIT_FAILURE);
}
%%
