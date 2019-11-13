import Data.Map (Map) 
import qualified Data.Map as Map  --required for GHCI  

myMap :: Integer -> Map Integer [Integer] 
myMap n = Map.fromList (map makePair [1..n]) 
   where makePair x = (x, [x*4])  

main = print(myMap 4)