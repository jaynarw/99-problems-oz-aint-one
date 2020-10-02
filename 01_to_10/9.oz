declare 
  fun {Pack Xs}
    local BinOp in
      fun {BinOp A B}
        if B == nil then
          [[A]]
        else
          case B
          of H|T then
            if H.1 == A then
              (A|H)|T
            else 
              [A]|B
            end
          end
        end
      end
      {FoldR Xs BinOp nil}
    end
  end
  {Browse {Pack [a a a a b c c a a d e e e e]}}
  % {Browse {FoldR [a a a a b c c a a d e e e e] fun {$ A B} f(A B) end nil}}
  {Browse (1|[1 2])|[3 4]}