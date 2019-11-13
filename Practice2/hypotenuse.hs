--  Write a program in haskell that calculates the hypotenuse (c) of the right triangle as shown in figure. 
-- hypotenuse Formula: a b = sqrt (a^2 + b^2)

hypotenuse:: (Float,Float) ->(Float)
hypotenuse(a, b) = c where
   c= sqrt(a^2+b^2)

main = do 
   print $ hypotenuse(4,3)