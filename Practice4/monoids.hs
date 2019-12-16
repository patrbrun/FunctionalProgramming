-- We have 3 sets of fruits:
-- A = ["mango", "melon", "apple"]
-- B = ["berry", "banana", "kiwi", "pineapple"]
-- C = ["grapes", "orange"]
-- Wite a program to concat 3 sets into one using monoids.

module FruitSet where
    data Fruits = 
      A          {  fruits :: [String]
                 } |  
      FruitSet   { fruits :: [String]
                 }
                 deriving (Eq, Show)
    instance Semigroup Fruits where 
      (A fruits) <> (A fruits') = FruitSet (fruits <> fruits')
      (FruitSet fruits) <> (A fruits') = FruitSet (fruits <> fruits')
      (A fruits) <> (FruitSet fruits') = FruitSet (fruits <> fruits')
    aFruits :: Fruits
    aFruits = A ["mango", "melon", "apple"]
    bFruits :: Fruits
    bFruits = A ["berry", "banana", "kiwi", "pineapple"]
    abFruits :: Fruits
    abFruits = aFruits <> bFruits
    cFruits :: Fruits
    cFruits = A ["grapes", "orange"]
    