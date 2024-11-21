roots :: (Double, Double, Double) -> (Double, Double)
roots (a, b, c) = ( (-b - d) / e, (-b + d) / e )
   where {d = sqrt (b * b - 4 * a * c);e = 2 * a} -- uwaga na przesunięcie!


roots1 :: (Double, Double, Double) -> (Double, Double)
roots1 (a, b, c) =
 let {d = sqrt (b * b - 4 * a * c);e = 2 * a}
 in ( (-b - d) / e, (-b + d) / e )