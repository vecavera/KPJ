#ifndef ELEMENT_HPP
#define ELEMENT_HPP

#include <iostream>
#include <cstdlib>
#include <vector>
#include <string>

using namespace std;

class Element {
public:
	virtual int vrednost() const =0;
};

class Broj: public Element{
public:
	Broj(int broj): _broj(broj){}
	int vrednost() const {return _broj;}
protected:
	int _broj;
};


class Znak: public Element{
public:
	Znak(char znak): _znak(znak){}
	int vrednost()const {return (int) _znak;}
protected:
	char _znak;

};

class Lista: public Element{
public:
	Lista(const vector<Element*> l): _l(l){}
	vector<Element*> vratiListu() {return _l;}
	int vrednost() const {
		unsigned n = _l.size();
		char prvi = (char)(_l[0]->vrednost());
		if (prvi=='+'){
			int suma = 0;
			for(unsigned i=1;i<n;i++)
				suma+=_l[i]->vrednost(); 
			return suma; }
		if (prvi=='*'){
			int proizvod = 1;
			for(unsigned i=1;i<n;i++)
				proizvod*=_l[i]->vrednost(); 
			return proizvod; }

	}

	Element* prviElem () const {return _l[0];}

protected: 
	vector<Element*> _l;
};






#endif
