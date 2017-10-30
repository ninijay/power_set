type Set a = [a]
powerset :: Set a -> Set (Set a)
powerset [] = [[]]
powerset (x:xs) = [x:ps | ps <- powerset xs] ++ powerset xs 