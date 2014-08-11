-- ex 1

toDigitsRev :: Integer -> [Integer]
toDigitsRev x 
    | x <= 0 = []
    | otherwise = x `mod` 10 : toDigitsRev(x `div` 10)


toDigits :: Integer -> [Integer]
toDigits x 
    | x <= 0 = []
    | otherwise = toDigits(x `div` 10) ++ [x `mod` 10]

-- ex 2

doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther [] = []
doubleEveryOther (x : []) = [x]
doubleEveryOther (x : (y : [] )) = [x, y*2]
doubleEveryOther (x : (y : zs )) = 
