declare
  fun {Dupli Xs}
    {Flatten [[A A] suchthat A in Xs]}
  end
  fun {Dupli2 Xs}
      {FoldR Xs fun {$ A B} A|A|B end nil}
  end

  {Browse [[A A] suchthat A in [a b d]]}
  {Browse {Dupli [a b c c d]}}
  {Browse {Dupli2 [a b c c d]}}