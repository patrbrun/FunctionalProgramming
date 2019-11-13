-- Write a program with guards in haskell that can provide a grade with the following scale: 
--   80-90 – A+, 70-79 – A, 60-69 – B, 50 – 59 – C and less than 50 is fail.

grade :: (Num a, Ord a) => a -> [Char]
grade score
   | score >= 80 = "A+"
   | score >= 70 = "A"
   | score >= 60 = "B"
   | score >= 50 = "C"
   | otherwise   = "Fail"
   
main = do
  putStrLn "Your score was 83, then your grade is:"  
  print (grade 83)