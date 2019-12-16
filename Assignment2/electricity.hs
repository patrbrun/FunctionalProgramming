-- Write a program to input electricity unit charge and calculate the total electricity bill according to the given condition:
-- For first 50 units Rs.0.50/unit
-- For next 100 units Rs.0.75/unit
-- For next 100 units Rs.1.20/unit
-- For unit above 250 Rs.1.50/unit
-- An additional surcharge of 20% is added to the bill.

electricityBill :: Float -> Float
electricityBill a
  -- First 50 units at 0.50
  | a <= 50 =a*0.5 +a*0.2
  -- Next 100 units at 0.75
  | a > 50 && a <=150 =a*0.75+a*0.2
  -- Next 100 units at 1.20
  | a > 150 && a <= 250=a*1.2+a*0.2
  -- Units above 250 at 1.50
  | a >250 = a*1.5+a*0.2
  -- Surcharge of 20% otherwise.
  | otherwise =a*0.2+a*0.2

main = do 
    putStrLn "The total electricity bill for 124 units is:"  
    print$ electricityBill 124