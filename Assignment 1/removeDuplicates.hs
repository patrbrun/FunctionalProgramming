import Data.List 

removeDuplicates :: (Eq a) => [a] -> [a]
removeDuplicates list = remDups list []

remDups :: (Eq a) => [a] -> [a] -> [a]
remDups [] _ = []
remDups (x:xs) list2
    | (x `elem` list2) = remDups xs list2
    | otherwise = x : remDups xs (x:list2)

main = do 
   putStrLn "After removing duplicates, the list is:" 
   print (removeDuplicates [1, 1, 2, 3, 4, 4, 5, 6,6, 6])
   