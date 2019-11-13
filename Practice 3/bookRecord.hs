data Book_Info = Book_Info { bookName :: String  
                     , authorName :: String  
                     , isbnNumber :: Int  
                     , yearPublished :: Int 
                     , versionNumber :: Int  
                     } deriving (Show)   

main = do 
  let book= Book_Info "Animal Farm" "George Orwell" 333444555 1984 01
  print $ book