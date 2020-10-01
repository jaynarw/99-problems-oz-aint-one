% Find the last but one element of a list.

declare
  fun {MyButLast Xs}
    case Xs
    of H|T then
      case T
      of _|T2 then
        if T2==nil then
          H
        else
          {MyButLast T}
        end
      end
    end
  end

  {Browse {MyButLast ['x' 'x' 'y' 'z' '5.9']}}
