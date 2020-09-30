% Reverse a list.
declare
  fun {Reverse Xs}
    local Aux in
      fun {Aux Xs Curr}
        case Xs 
        of nil then
          Curr
        [] H|T then
          {Aux T H|Curr}
        end
      end
      {Aux Xs nil}
    end
  end