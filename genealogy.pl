/* parent and grandparent have an arity of 2, male and female have an arity of 1 */

parent(adam,john).
parent(eve,john).
parent(eve,lisa).
parent(john,anne).
parent(john,pat).
parent(pat,jacob).
parent(carol, jacob).


whoIsTheParentOfPat(X) :- parent(X,pat).
isLisaAParent(X) :- parent(lisa,X).

male(adam).
male(john).
male(pat).
male(jacob).
female(eve).
female(lisa).
female(carol).

grandparent(adam,anne).
grandparent(eve,anne).
grandparent(john,jacob).

grandparent(GP,GC) :- parent(C,GC), parent(GP,C). % parent(C,GC)... C is parent of GC; parent(GP,C) ... GP is parent of C
