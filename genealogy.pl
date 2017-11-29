/* parent and grandparent have an arity of 2, male and female have an arity of 1 */
parent/2.
male/1.
female/1.
grandparent/2.


parent(adam,john).
parent(eve,john).
parent(eve,lisa).
parent(john,anne).
parent(john,pat).
parent(pat,jacob).
parent(carol, jacob).

isParent(X,pat) :- parent(X,pat). /*isParent(X,pat). --> now you know who the parent of pat is (it's john) */
 
isLisaParent(lisa,X) :- parent(lisa,X). /*isLisaParent(lisa,X). --> finds out whether lisa has a child or not (no she does not have on) */

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

grandparent(GP,GC) :- parent(C,GC), parent(GP,C). /* parent(C,GC)... C is parent of GC; parent(GP,C) ... GP is parent of C*/
