data Nat
    = Z
    | N Nat deriving Show

three = N (N ( N Z))
four = N three

add :: Nat -> Nat -> Nat
add Z n = n 
add (N k) n = N (add k n)

mult :: Nat -> Nat -> Nat
mult Z n = Z
mult (N n) m = add (mult n m) m

fibo :: Nat -> Nat
fibo Z = Z
fibo (N Z) = N Z
fibo (N (N n)) = fibo n `add` fibo (N n)

pow :: Nat -> Nat
pow Z = N Z
pow (N n) = (N (N Z)) `mult` (pow n)

toInt :: Nat -> Int
toInt Z = 0
toInt (N n) = 1 + (toInt n)

fromInt :: Int -> Nat
fromInt 0 = Z
fromInt n = N (fromInt (n-1))