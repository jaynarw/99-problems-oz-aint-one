% Find the K'th element of a list. The first element in the list is number 1.

declare
  fun {Kth Xs K}
    case Xs of H|T then
      if K==1 then
        H
      else
        {Kth T K-1}
      end
    end
  end