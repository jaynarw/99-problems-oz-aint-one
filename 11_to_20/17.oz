declare
  fun {Split Xs N}
    if N==0 then
      [nil Xs]
    else
      case Xs of
      H|T then
        local X = {Split T N-1} in
          (H|X.1)|X.2
        end
      end
    end
  end
  {Browse {Split [a b c d e f g h i k] 3}}