% Find out whether a list is a palindrome. A palindrome can be read forward or backward;
declare
  fun {Palindrome Xs}
    local Aux Aux2 in
      fun {Aux XsParsed Curr}
        if Curr == nil then
          true
        elseif (Curr.1 == XsParsed.1) then
          {Aux XsParsed.2 Curr.2}
        else
          false
        end
      end
      fun {Aux2 Curr Reversed}
        case Curr
        of nil then
          true
        else
          if Curr.2 == nil then
            {Aux Xs Curr.1|Reversed}
          else
            {Aux2 Curr.2 Curr.1|Reversed}
          end
        end
      end
      {Aux2 Xs nil}
    end
  end
  {Browse {Palindrome [1 2 2 1 1]}}