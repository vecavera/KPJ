#ifndef SET_HPP
#define SET_HPP

#include <iostream>
#include <set>


using namespace std;


class Set: public set<double> {
	public:
		Set(){};
		void pisi (ostream& o) const;
		Set operator+ (const Set& s) const;
		Set operator- (const Set& s) const;
		Set operator* (const Set& s) const;



};

ostream& operator<< (ostream& o, const Set& s);





#endif

