declare
  fun {Compress Xs}
    local Aux in
      fun {Aux Xs Prev}
        case Xs
        of nil then
          nil
        [] H|T then
          if H == Prev then 
            {Aux T H}
          else
            H|{Aux T H}
          end
        end
      end
      {Aux Xs nil}
    end
  end
  {Browse {Compress "aaaabccaadeeee"}}