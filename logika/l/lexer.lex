%option noyywrap

%{

#include <iostream>
using namespace std;

#include <cstdlib>

#include "parser.tab.hpp"

%}



%%

"/\\"   return i_token;
"<=>"   return ekv_token;
"=>"    return sledi_token;
"\\/"    return ili_token;
":="    return dodela_token;
"True"  return true_token;
"False" return false_token;

[a-z]([a-z0-9]+)?  {
    yylval.s = new string(yytext);
    return id_token;
}

[!()\n] return *yytext;

[ \t] {}

. {
    cerr<<"Leksicka greska"<<endl;
    exit(EXIT_FAILURE);
}

%%
