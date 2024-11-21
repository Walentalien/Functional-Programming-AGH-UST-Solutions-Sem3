absInt :: Int -> Int
absInt n | n >= 0    = n
         | otherwise = -n
{-
absInt :: Int -> Int
absInt n | n > 0 = n
         | n < 0 = -n    
-}

sgn :: Int -> Int
sgn x   | x<0 = -1
        | otherwise = 1

min3Int :: (Int, Int, Int) -> Int -- min (1,2,3)=1, min (1,1,3)=1
min3Int (x,y,z)     | x<y && x<z = x 
                    | y<x && y<z = y
                    |otherwise = z
toUpper :: Char -> Char
toUpper c
    | 'a' <= c && c <= 'z' = toEnum (fromEnum c - 32) 
    | otherwise = c  
toLower :: Char -> Char
toLower c
    | 'A' <= c && c <= 'Z' = toEnum (fromEnum c + 32)  
    | otherwise    = c  