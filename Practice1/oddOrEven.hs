--  Write a program in haskell that finds an integer number either odd or even. 

import Prelude hiding (even, odd) 

even, odd :: (Integral number) => number -> Bool
even = (0 ==) . (`rem` 2)
odd = not . even

main :: IO ()
-- Prints True or False if number 453 is odd or even.
main = print(odd <$> [453], even <$> [453])