%option noyywrap
%option nounput

%{
#include <iostream>
#include <stdlib>
#include <string>

using namespace std;


#include "parser.tab.hpp"



%}




%%
puts {return puts_token;}
length {return length_token;}
abs {return abs_token;}
index {return index_token;}
reverse {return reverse_token;}
sort {return sort_token;}
uniq {return uniq_token;}
downcase {return downcase_token;}
(-)?[0-9][0-9]* {yylval.d=atoi(yytext); return num_token;}
[a-zA-Z ]+ {yylval.s=new string(yytext); return string_token;}
[\"().] {return *yytext;}
[ \t\n] { }
. {
cerr<<"Leksicka greska, nepoznat karakter: "<<*yytext<<endl;
exit(EXIT_FAILURE);
}




%%
