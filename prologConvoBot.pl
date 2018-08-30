% Assignment 12: Use looping. Done by calling the predicate within the
% predicate. Also, translate a list of words given by user. Then
% write those words in good format.
%
% the dictionary
lookup(you , 'i').
lookup(i, 'why do you').
lookup(are, 'am not').
lookup(do, 'no, ').
lookup(portuguese, 'russian').
lookup(X, X).%For all other cases

% the translation procedure
translate([],[]).
translate([Word|Sentence ],Eliza):-
lookup(Word,EWord)->
 translate(Sentence,ESentence),
Eliza=[EWord|ESentence ].

fixSentence([],"").
fixSentence([Word|Sentence],GoodSentence) :-
	fixSentence(Sentence,FixedSentence),
        atomics_to_string([Word, FixedSentence], ' ', GoodSentence).

interact :-
	nl,
	writeln('Please enter your input here as a list of words: '),
	writeln("EX: [hello,how,are,you] for \"hello how are you\": "),
	read(X),
	translate(X,Y),
	fixSentence(Y,Z),
	writeln(Z),
	interact.

