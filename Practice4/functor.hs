-- Write a program to solve xˆ2 + 2x - 5 for any x using functor.

data Equations = Algebra Integer 
  deriving (Show)

class Solve s where
  expression :: s -> Integer

instance Solve Equations where
  expression (Algebra x) = (x * x) + 2*x +5

main :: IO ()
main = do 
  print $ expression (Algebra 2)
    
