divisible_by_five :: Int -> Bool 
verify  :: Bool -> String 

divisible_by_five x = if x `rem` 2 == 0 
   then True 
else False 
verify x = if x == True 
   then "The number is divisible by 5" 
else "The number is not divisible by 5" 

main = do
   -- If number is divisible by 5, it will be printed to 'divisible' file.
   -- If not, file 'not divisible' will not exist.
let fileTrue= "DivisibleBy5.txt"
    fileFalse= "NotDivisibleby5.txt"

putStrLn "Writing to file" 

-- Checks if 40 is divisible by 5
writeFile fileTrue  ((verify.divisible_by_five)(40))

fivers <- readFile fileTrue
putStrLn fivers

contents <- readFile fileFalse
putStrLn contents
