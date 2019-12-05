-- Write a program where we can find the position of 1 in a binary sequence like
-- [1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1]

positionOfOne ::Eq a =>a ->[a]->[Int]
positionOfOne x xs = [i | (x', i ) <- zip xs [0..n], x == x'] where 
                     n = length xs -1

main = do
   putStrLn "1 is located in the following positions in the array [1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1]"  
   print(positionOfOne 1 [1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1])