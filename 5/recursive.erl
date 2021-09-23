-module(recursive).

-export([fac/1,len/1,tail_fac/1,tail_fac/2,tail_len/1,tail_len/2]).

fac(0) -> 1;
fac(N) when N > 0 -> N * fac(N - 1).

len([]) -> 0;
len([_|T]) -> len(T) + 1.

tail_fac(N) -> tail_fac(N,1).

tail_fac(0, Acc) -> Acc;
tail_fac(N, Acc) when N > 0 -> tail_fac(N-1, Acc * N).

tail_len(L) -> tail_len(L,0).

tail_len([], Acc) -> Acc;
tail_len([_|T], Acc) -> tail_len(T, Acc + 1).