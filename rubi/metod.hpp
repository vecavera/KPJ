#ifndef METOD_HPP
#define METOD_HPP

#include <iostream>
#include <string>
#include <cstdlib>
#include <cmath>
#include <bits/stdc++.h>

using namespace std;

class Metod {
public:
	virtual void izvrsi(string *s)const=0;

};

class Duzina {
public:
	int izvrsi (string* s)const {return s->length();}
};

class Reverse: public metod {
public:
	void izvrsi(string *s) const { reverse(s->begin(),s->end());}
	


};








#endif
