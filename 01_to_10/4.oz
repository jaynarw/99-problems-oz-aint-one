% Find the number of elements of a list.
declare
  fun {Length Xs}
    case Xs 
    of nil then
      0
    [] _|T then
      1 + {Length T}
    end
  end
