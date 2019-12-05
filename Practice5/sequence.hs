-- Write a program which will find if a sequence of numbers is in descending order or not.
-- For example: [8, 4, 2, 1] is true, [1, 3, 7, 9] is false.

descNumbers :: (Ord a) => [a] -> Bool
descNumbers [] = True
descNumbers (x : []) = True
descNumbers (x:y:xs) = (x >= y) && descNumbers (y:xs)

main = do
   putStrLn "Are the numbers 9, 7, 4 and 2 descending?"  
   print(descNumbers [9, 7, 4 , 2])