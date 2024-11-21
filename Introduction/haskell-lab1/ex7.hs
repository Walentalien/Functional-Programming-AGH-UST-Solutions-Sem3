not' :: Bool -> Bool
not' True = False
not' False = True

-- Logical OR
or' :: (Bool, Bool) -> Bool
or' (x, y) = x || y

-- Logical AND
and' :: (Bool, Bool) -> Bool
and' (x, y) = x && y

-- Logical NAND (NOT AND)
nand' :: (Bool, Bool) -> Bool
nand' (x, y) = not (and' (x, y))

-- Logical XOR (exclusive OR)
xor' :: (Bool, Bool) -> Bool
xor' (x, y) = (x || y) && not (x && y)



isItTheAnswer :: String -> Bool
isItTheAnswer "Love" = True -- :)
isItTheAnswer _      = False