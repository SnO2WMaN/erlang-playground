-module(functions).

-export([head/1,second/1,same/2,right_age/1,wrong_age/1,help_me/1,insert/2,beach/1]).

head([H|_]) -> H.

second([_,X|_])->X.

same(X,X)->true;
same(_,_)->false.

right_age(X) when X >= 16, X =< 104 -> true;
right_age(_) -> false.

wrong_age(X) when X < 16; X > 104 -> true;
wrong_age(_) -> false.

help_me(Animal) ->
    Talk = if Animal == cat -> "meow";
              Animal == beef -> "mooo";
              Animal == dog -> "bark";
              Animal == tree -> "bark";
              true -> "funri"
            end,
    {Animal, "says "++ Talk ++ "!"}.

insert(X, []) -> [X];
insert(X,Set) ->
        case lists:member(X,Set) of
            true -> Set;
            false -> [X|Set]
        end.

beach(Temp) ->
	case Temp of
		{celsius, N} when N >= 20, N =< 45 -> "fav";
		{kelvin, N} when N >= 293, N =< 318 -> "fav sci";
		{fahrenheit, N} when N >= 68, N =< 113 -> "fav in us";
		_ -> "avoid"
	end.