declare
  fun {Drop Xs N}
    local Aux in
      fun {Aux Xs N CurrIdx}
        case Xs
        of nil then
          nil
        [] H|T then
          if N == CurrIdx then
            {Aux T N 1}
          else
            H|{Aux T N CurrIdx+1}
          end
        end
      end
    {Aux Xs N 1}
    end
  end
  {Browse {Drop [a b c d e f g h i k] 3}}