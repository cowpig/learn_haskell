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

doubleEveryOtherLtoR :: [Integer] -> [Integer]
doubleEveryOtherLtoR [] = []
doubleEveryOtherLtoR (x:[]) = [x]
doubleEveryOtherLtoR (x:(y:zs)) = x : (y*2:(doubleEveryOtherLtoR zs))

doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther xs = reverse (doubleEveryOtherLtoR (reverse xs))

-- ex 3

sumDigitsInt :: Integer -> Integer
sumDigitsInt x
	| x < 10 = x
	| otherwise = (x `mod` 10) + sumDigitsInt (x `div` 10) 

sumDigits :: [Integer] -> Integer
sumDigits [] = 0
sumDigits [x] = sumDigitsInt x
sumDigits (x : zs) = (sumDigitsInt x) + (sumDigits zs)

-- ex 4

checksum :: Integer -> Integer
checksum x = sumDigits (doubleEveryOther (toDigits x))

validate :: Integer -> Bool
validate x = (sumDigits (doubleEveryOther (toDigits x))) `mod` 10 == 0