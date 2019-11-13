-- Write a program in haskell that calculates the Euclidian distance between two coordinates (x1,y1) and (x2,y2).
-- Formula: sqrt((x1-x2)^2 + (y1-y2)^2)

euclidean:: [Double] -> [Double] -> Double
euclidean x y = sqrt $ sum $ zipWith (\ u v -> (u-v)^2) x y

main = do 
     let a = [1,2]
     let b = [4,5]
     print (euclidean a b)
