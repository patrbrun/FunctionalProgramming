import Data.List 
import Data.Char


palindromic :: String -> String
-- Checks if string is same as it's reverse.
palindromic x = if x == reverse x
    then "String is a palindrome."
    else "String is not a palindrome."

lowerString str = [ toLower loweredString | loweredString <- str]

main = do 
   let list_words = ["Kayak","House","Anna","Fish","Clock"] 
   -- Checks if Kayak is a palindrome.
   putStrLn "Is Kayak a palindrome?" 
   print ((palindromic)(lowerString "Kayak"))
    -- Checks if House is a palindrome.
   putStrLn "Is House a palindrome?" 
   print ((palindromic)(lowerString "House"))

   