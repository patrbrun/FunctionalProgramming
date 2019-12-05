-- Write a program where we can take four letters by pressing enter and it will print the sequence (a, b, c, d)

main = do
   putStrLn "Enter four letters: "  
   letters <- getLine
   print(map (:[])letters)