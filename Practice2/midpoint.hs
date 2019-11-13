-- If the end points of a line segment is (x1, y1) and (x2, y2) then write a program to find the midpoint of the line segment using tuples.

midpoint :: (Float,Float,Float,Float) ->(Float,Float)
midpoint (x1,x2,y1,y2) =  (x/2 ,y/2) where
   x= x1+x2
   y= y1+y2

main = do 
    print $ midpoint(2,5,8,9)