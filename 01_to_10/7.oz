declare
  fun {Concat Xs Ys}
    case Xs
    of nil then
      Ys
    [] H|T then
      H|{Concat T Ys}
    end
  end
  fun {Flatten Xs}
    case Xs
    of nil then 
      nil
    [] H|T then
      case H
      of _|_ then
        {Concat {Flatten H} {Flatten T}}
      else
        H | {Flatten T}
      end
    end
  end
  {Browse {Flatten [[[69 1] 2 [4 5 6]] 2 [3 [1]] [[4] [[5] 9] ] ]}}