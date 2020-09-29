% (*) Find the last element of a list.

declare
  fun {Last Xs}
    case Xs
    of nil then nil
    [] H|T then
      case T
      of nil then H
      else {Last T}
      end
    end
  end
  {Browse {Last [1 2 3 4 5 6]}}