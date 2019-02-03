#ifndef SET_HPP
#define SET_HPP

#include <iostream>
#include <set>


using namespace std;


class Set: public set<double> {
	public:
		Set(){};
		void pisi (ostream& o) const;
		Set<double> unija (Set<double> s1, Set<double> s2) const;

};

ostream& operator<< (ostream& o, const Set& s);





#endif

