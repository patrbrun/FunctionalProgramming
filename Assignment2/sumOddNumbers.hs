-- Write a program which calculates the sum of a ll odd numbers in a given range.

-- Done in GHCI
-- Sum all the off numbers in a range of 0 to 15.
sum (takeWhile (<50) (filter odd (map (^2) [1..])))