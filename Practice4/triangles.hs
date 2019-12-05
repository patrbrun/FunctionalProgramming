-- We have two triangles, where the bases of the triangles are 5cm and 3cm, heights of the triangles are 3cm and 7cm respectivelly.
-- Find the area of the two triangles using lambdas.

triangle :: Double -> Double -> Double -> Double
-- Area = height * base / 2
triangle = \h -> \b-> \a -> h * b * a 
-- a = 0.5 = /2

main = do 
    putStrLn "The area of the first triangle with height 3cm and base 5cm is:" 
    print $ (triangle 3 5 0.5)
    putStrLn "The area of the second triangle with height 7cm and base 3cm is:" 
    print $ (triangle 7 3 0.5)