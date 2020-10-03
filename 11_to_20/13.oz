declare
  fun {EncodeDirect Xs}
    local Aux in 
      fun {Aux Xs Prev PrevCount}
        % {Browse [Xs Prev PrevCount]}
        case Xs
        of nil then
          if PrevCount == 1 then
            Prev
          elseif PrevCount > 1 then
            [PrevCount Prev]|nil
          else
            nil
          end
        [] H|T then
          if PrevCount>0 then
            if Prev == H then
              {Aux T H PrevCount+1}
            else
              [PrevCount Prev]|{Aux Xs nil 0}
            end
          elseif PrevCount == 1 then
            Prev|{Aux Xs nil 0}
          else
            {Aux T H 1}
          end
        end
      end
      {Aux Xs nil 0}
    end
  end
  fun {EncodeDirect2 Xs}
    local BinOp in
      fun {BinOp A B}
        case B
        of nil then
          A|nil
        [] H|T then
          case H
          of H2|T2 then
            if T2.1 == A then
              [H2+1 A]|T
            else
              A|B
            end
          else
            if H==A then
              [2 A]|T
            else
              A|B
            end
          end
        end
      end
      {FoldR Xs BinOp nil}
    end
  end
  % {Browse {EncodeDirect [a a a a b c c a a d e e e e]}}
  {Browse {EncodeDirect2 [a a a a b c c a a d e e e e]}}

  % {Browse {FoldR [b c d] fun {$ A B} f(A B) end a}}