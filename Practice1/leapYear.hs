-- Write a program in haskell that finds a year leap year or not.

leapYear :: Int -> Bool
leapYear year

  -- Check if year is multiple of 400
  | mod year 400 == 0 = True
  -- Check if year is multiple of 100
  | mod year 100 == 0 = False
  -- Check if year is multiple of 4
  | mod year 4 == 0 = True
    otherwise = False
  
main = do 
  print (leapYear 2019)