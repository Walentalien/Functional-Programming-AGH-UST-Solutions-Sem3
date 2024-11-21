not' :: Bool -> Bool
not' b = case b of
          True  -> False
          False -> True

absInt n =
 case (n >= 0) of
   True -> n
   _    -> -n


isItTheAnswer :: String -> Bool
isItTheAnswer word = 
    case word  of
        "Love" -> True
        _ -> False

or' :: (Bool, Bool) -> Bool
or' (x, y) = case (x, y) of
    (True, _)  -> True   
    _  -> False  
