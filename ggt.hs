ggt :: Integer -> Integer -> Integer
ggt n 0 = n
ggt 0 m = m
ggt x y = 
    ggt mi (ma - mi)
    where
        mi = min x y
        ma = max x y

ggt2 :: Integer -> Integer -> Integer
ggt2 x y
    | x == 0 || y == 0 = max x y
    | x < y = ggt2 x (y - x)
    | otherwise = ggt2 (x - y) y