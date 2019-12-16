-- Write a program that calculates the following expression:
-- (1+2)/(9*2)+56*3.4
-- Use recursive data type named Expr.

data Expr = Value Float
   | Sum Expr Expr
   | Mul Expr Expr
   | Div Expr Expr
   deriving (Show)

eval :: Expr -> Float
eval (Value x) = x
eval (Sum e1 e2) = eval e1 + eval e2
eval (Mul e1 e2) = eval e1 * eval e2
eval (Div e1 e2) = eval e1 / eval e2

main = do
    putStrLn "(1+2)/(9*2)+56*3.4 ="  
    print$ eval(Sum(Sum(Div(Sum(Value 1)(Value 2))(Mul(Value 9)(Value 2)))(Value 56))(Value 3.4))