sgn :: Int -> Int
sgn n = if n < 0
       then -1
       else if n == 0
            then 0
            else 1

absInt :: Int -> Int -- absInt 2 = absInt (-2) = 2
absInt number = if number < 0
    then -number
    else number

min2Int :: (Int, Int) -> Int -- min (1,2) = 1, min (-1, -1) = -1
min2Int (x,y) = if x<y
    then x
    else y

min3Int :: (Int, Int, Int) -> Int
min3Int (x, y, z) =
    if x < y
        then if x < z
            then x
            else z
        else if y < z
            then y
            else z

min3Int_ :: (Int,Int,Int)-> Int
min3Int_ (x,y,z) = 
    min2Int (z, (min2Int ( x ,y)))


toUpper :: Char -> Char
toUpper c
    | 'a' <= c && c <= 'z' = toEnum (fromEnum c - 32)
    | otherwise            = c

toLower :: Char -> Char
toLower c
    | 'A' <= c && c <= 'Z' = toEnum (fromEnum c + 32)
    | otherwise            = c


isDigit :: Char -> Bool
isDigit c = '0' <= c && c <= '9'




isChar :: Char -> Bool
isChar c = ('a' <= c && c <= 'z') || ('A' <= c && c <= 'Z')

charToNum :: Char -> Int
charToNum c
    | isDigit c = fromEnum c - fromEnum '0'
    | otherwise = error "Input is not a digit"


romanDigit :: Char -> Maybe String
romanDigit c
    | c == 'I' = Just "I"
    | c == 'V' = Just "V"
    | c == 'X' = Just "X"
    | c == 'L' = Just "L"
    | c == 'C' = Just "C"
    | c == 'D' = Just "D"
    | c == 'M' = Just "M"
    | otherwise = Nothing
