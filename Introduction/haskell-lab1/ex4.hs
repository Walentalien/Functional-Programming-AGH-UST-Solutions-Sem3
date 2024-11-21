sqr :: Double -> Double
sqr x = x * x
-- calculate len of 2d vector
vec2DLen :: (Double, Double) -> Double
vec2DLen (x, y) = sqrt (x^2 + y^2)
-- calculate leb of 3d vector
vec3DLen :: (Double,Double, Double) -> Double
vec3DLen (x,y,z) = sqrt (x^2 + y^2 + z^2)

swap :: (Int, Char) -> (Char, Int)
swap(number, letter) = (letter,number)

threeEqual :: (Int, Int, Int) -> Bool
threeEqual (x, y, z) = x==y && y == z

triangleArea1 :: (Double,Double,Double ) -> Double
triangleArea1 (a,b,c)  = sqrt((a+b+c)/2 *(-a+(a+b+c)/2) * (-b+(a+b+c)/2) * (-c+(a+b+c)/2) )

triangleArea :: (Double, Double, Double) -> Double
triangleArea (a, b, c) =
    let s = (a + b + c) / 2  -- Semi-perimeter
    in sqrt (s * (s - a) * (s - b) * (s - c))