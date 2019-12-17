-- Write a program using Scans where input is a number and the output is the multiplication of that number with 5.

main = do  
    putStrLn "The number chosen is 43. What is the multiplication of 43 by 5?"  
    print (scanl(*) 43 [5])