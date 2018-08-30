%Empty lists do not need to be reversed.
%This prolog program can reverse a list. Simply query
%with a list, and X, and you will receive a reversed list.
%We do this by checking base case(empty list), then
%recursively calling method with the tail.
%If list is [1,2,3], then we call method with [2,3],then [3], then [].
%When doing this, the tail is stored in "ReversedT", which we use to
%append. Append also happens recursively, with one item being appended
% into "Reverse", then another, then another, starting from end of list
% and going until the item after first. We append those, then the Head,
% which is the first, and then appends these into "Reverse".
myflip([],[]).
myflip([H|T],Reverse) :-
	myflip(T,ReversedT),
	append(ReversedT,[H],Reverse).
