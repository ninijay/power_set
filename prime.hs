pf :: Integer -> [Integer]
pf 0 = []
pf 1 = []
pf n = least : (pf (n `div` least))
    where
        least = fn 2 n

fn :: Integer -> Integer -> Integer
fn x y
    | y < 0 = fn x (-y)
    | x > y = fn (x-1) y
    | y `mod` x == 0 = x
    | otherwise = fn (x+1) y