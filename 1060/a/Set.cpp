#include "Set.hpp"

using namespace std;

void Set::pisi (ostream& o) const {
o<<'{';
for (set<double>::iterator it=begin(); it!= end(); it++)
o<<(*it)<<',';
o<<'}';


}

Set<double> Set::unija (Set<double> s1, Set<double> s2) const {
Set<double> rez = s1;
res.insert(s2.begin(),s2.end());
return res;
}

ostream& operator<< (ostream& o, const Set& s) {
s.pisi(o);
return o;
}
