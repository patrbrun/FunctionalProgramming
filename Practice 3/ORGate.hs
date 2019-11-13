data Bit = Zero | One
gateEq :: (Bit,Bit)-> Bool
gateEq (Zero,Zero)= False
gateEq (Zero, One) = True
gateEq (One,Zero) = True
gateEq (One,One)= True

main = do 
  print $ gateEq (Zero,Zero)
 
    