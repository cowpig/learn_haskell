x :: Int
x = 3

reallyBig :: Integer
reallyBig = 2^(2^(2^(2^2)))

numDigits :: Integer -> Int
numDigits n = length (show n)

d1, d2 :: Double
d1 = 4.5387
d2 = 6.2831e-4

b1, b2 :: Bool
b1 = True
b2 = False

c1, c2, c3 :: Char
c1 = 'x'
c2 = 'Ø'
c3 = 'ダ'

s :: String
s = "Hello, Haskell!"

s2 :: String
s2 = ['H', 'i', '!']

hailstone :: Integer -> Integer
hailstone n
  | n `mod` 2 == 0 = n `div` 2
  | otherwise      = 3*n + 1

hailstoneSequence :: Integer -> [Integer]
hailstoneSequence 1 = [1]
hailstoneSequence n = n : hailstoneSequence (hailstone n)