-- Write a program which declares a data type named Box for finding the surface area and volume of a box.

data Shapes = Volume Double Double Double | SurfaceArea Double Double Double 
  deriving (Show)

class Shape s where
  box :: s -> Double 

instance Shape Shapes where
  -- Volume formula = L*W*D
  box (Volume l w d) = l*w*d
  -- Surface area formula = 2(L*W)+2(L*D)+2(W*D)
  box (SurfaceArea l w d ) = 2*(l*w)+2*(l*d)+2*(w*d)
  
main :: IO ()
main = do
  putStrLn "The volume of the box is:"  
  print $ box (Volume 4 8 6)
  putStrLn "The surface area of the box is:"  
  print $ box (SurfaceArea 4 8 6)
    
