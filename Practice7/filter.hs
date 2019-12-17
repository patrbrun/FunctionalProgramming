-- Write a program using Filter where there is a list of years from 1990 until the current year.
-- Find out the first year in the list which is a leap year.

largestDivisible :: (Integral a) => a  
largestDivisible = head (filter p [1990..2019])  
  where p x = x `mod` 4 == 0

main = do
  putStrLn "The first leap year since 1990 is:"
  print $ largestDivisible