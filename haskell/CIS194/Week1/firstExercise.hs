toDigitsRev :: Integer -> [Integer]
toDigitsRev 0 = []
toDigitsRev x =  x `mod` 10 : toDigitsRev (x `div` 10)

toDigits :: Integer -> [Integer]
toDigits x = reverse (toDigitsRev x)

doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther list = reverse (doubleEveryOther' (reverse list))

doubleEveryOther' :: [Integer] -> [Integer]
doubleEveryOther' [] = []
doubleEveryOther' (first:[]) = [first]
doubleEveryOther' (first:(second:[])) = first : [second * 2]
doubleEveryOther' (first:(second:rest)) = first : second * 2: doubleEveryOther' rest

sumDigits :: [Integer] -> Integer
sumDigits [] = 0
sumDigits (0:tail) = sumDigits tail
sumDigits (head:tail) = head `mod` 10 + sumDigits (head `div` 10 :tail)

validate :: Integer -> Bool
validate creditCardNumber = (sumDigits (doubleEveryOther (toDigits creditCardNumber))) `mod` 10 == 0