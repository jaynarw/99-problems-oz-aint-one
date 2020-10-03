declare
  fun {Repli Xs N}
    {FoldR Xs fun {$ A B} {Append [A suchthat C in 1..N] B} end nil}
  end
  {Browse {Repli [a b c] 3}}