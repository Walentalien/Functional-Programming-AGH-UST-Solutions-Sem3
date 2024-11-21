roots :: (Double, Double, Double) -> (Double, Double)
roots (a, b, c) =
 let d = sqrt (b * b - 4 * a * c)
     e = 2 * a
 in ( (-b - d) / e, (-b + d) / e )

unitVec3D__ :: (Double, Double, Double) -> (Double, Double, Double)
unitVec3D__ (0, 0, 0) = error "Zero vector has no unit vector"
unitVec3D__ (x, y, z) = 
    let magnitude = sqrt (x^2 + y^2 + z^2) in 
    (x / magnitude, y / magnitude, z / magnitude)
  
triangleArea :: (Double, Double, Double) -> Double
triangleArea (a, b, c)
    | a + b > c && b + c > a && c + a > b = 
        let p = (a + b + c) / 2
        in sqrt (p * (p - a) * (p - b) * (p - c))
    | otherwise = error "Invalid triangle sides"

