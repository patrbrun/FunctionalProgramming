-- Use folds to create a list of squares of some numbers.

squareNumbers :: [Int] -> [Int]
squareNumbers = map (\x -> x*x)

sumList :: Num a => [a] -> a
-- Foldr takes the second argument and the last item of the list and applies
-- the function, then it takes the penultimate item from the end and the result, and so on.
sumList list = foldr (+) 0 list

main = do 
   let numberList =[34,22,5,12,46]
   putStrLn "The result is:"   
   print (sumList(squareNumbers numberList))