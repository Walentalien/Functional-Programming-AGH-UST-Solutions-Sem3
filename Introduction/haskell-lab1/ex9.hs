roots :: (Double, Double, Double) -> (Double, Double)
roots (a, b, c) = ( (-b - d) / e, (-b + d) / e )
   where d = sqrt (b * b - 4 * a * c)
         e = 2 * a

unitVec2D :: (Double, Double) -> (Double, Double)
unitVec2D (x, y) = (x / magnitude, y / magnitude)
  where
    magnitude = sqrt (x^2 + y^2)

unitVec3D :: (Double, Double, Double) -> (Double, Double, Double)
unitVec3D (0, 0, 0) = error "Zero vector has no unit vector"
unitVec3D (x, y, z) = (x / magnitude, y / magnitude, z / magnitude)
  where
    magnitude = sqrt (x^2 + y^2 + z^2) 

triangleArea :: (Double, Double, Double) -> Double
triangleArea (a, b, c)
    | a + b > c && b + c > a && c + a > b = sqrt (p * (p - a) * (p - b) * (p - c))
    | otherwise = error "Invalid triangle sides"
  where
    p = (a + b + c) / 2  -- semiperimeters