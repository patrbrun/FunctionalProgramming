-- Write a program in haskell that calculates the periphery (circumference) and area of a circle with the given radius.
-- DONE

data Circle_Shape = Circle Float
calc :: Circle_Shape -> Float   

-- Calculate area of circle with radius 10
calc (Circle  r) = pi * r ^ 2
area = (calc $ Circle  10)

-- Calculate periphery of circle with radius 10
calc2 (Circle  r) = 2* pi * r
periphery = (calc2 $ Circle  10)

main = print (area, periphery)