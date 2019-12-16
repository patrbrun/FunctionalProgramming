-- Write a program which represents the tree in the figure.

import Data.Tree
-- Tree nodes
tree = Node "X" [Node "Y" [Node " " [], Node "P" []], Node "Z" [Node "Q" [], Node "R" []]]

main = do
    print tree
    putStrLn $ drawTree tree
    putStrLn $ drawForest $ subForest tree

    print $ flatten tree
    print $ levels tree