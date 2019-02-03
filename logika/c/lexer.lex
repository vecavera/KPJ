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
":=" {return dodela_token;}
"\\/" {return ili_token;}
"/\\" {return i_token;}
"<=>" {return ekvi_token;}
"=>" {return implikacija_token;}
"!" {return negacija_token;}
"True" {yylval.b=true; return true_token;}
"False" {yylval.b=false; return false_token;}
[a-z] {yylval.s=new string(yytext); return id_token;}
[/\\<>=!()\n] {return *yytext;}
[ \t] { }
. {
cerr<<"Leksicka greska, nepoznat karakter: "<<*yytext<<endl;
exit(EXIT_FAILURE);
}





%%