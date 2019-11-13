-- Write a program in haskell that finds the Fibonnaci sequence until a given number using recursion.

fib :: Int -> Integer
fib n = fibs !! n where
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

main = do
   print $ map fib [0..20]