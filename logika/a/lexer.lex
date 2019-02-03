%option noyywrap
%option nounput

%{
#include <iostream>
#include <cstdlib>
#include <string>

using namespace std;


#include "parser.tab.hpp"

%}





%%
"\\/" {return ili_token;}
"/\\" {return i_token;}
"<=>" {return ekvi_token;}
"=>" {return implikacija_token;}
"!" {return negacija_token;}
[a-z] {yylval.s=new string(yytext); return id_token;}
[/\\<>=!()] {return *yytext;}
[ \t\n] { }
. {
cerr<<"Leksicka greska, nepoznat karakter: "<<*yytext<<endl;
exit(EXIT_FAILURE);
}





%%
