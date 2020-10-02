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
  fun {Encode Xs}
    {Map {Pack Xs} fun {$ A} [{Length A} A.1] end}
  end
  fun {EncodeModified Xs}
    {Map {Encode Xs} fun {$ A} if A.1==1 then A.2.1 else A end end}
  end

    {Browse {Encode [a a a a b c c a a d e e e e]}}
    {Browse {EncodeModified [a a a a b c c a a d e e e e]}}