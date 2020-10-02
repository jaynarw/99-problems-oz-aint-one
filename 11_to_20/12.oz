declare
  fun {Decode Xs}
    local Aux in
      fun {Aux A}
        case A
        of H|T then
          [T.1 suchthat I in 1..H]
        else
          [A]
        end
      end
    {FoldR {Map Xs Aux} Append nil}
    end
  end

% {Browse {List.make 10}}
{Browse {Decode [[4 a] b [2 c] [2 a] d [4 e]]}}