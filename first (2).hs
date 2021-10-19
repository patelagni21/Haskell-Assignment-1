heads :: [a] -> Maybe a

heads (x:xs) = Just x
heads []  = Nothing


final :: [a] -> Maybe a

final [] = Nothing
final [x] = Just x
final (x:xs) = final xs


data Tree a = Tip | Bin ( Tree a ) a ( Tree a )

sumTree :: ( Num a ) => Tree a -> a

sumTree Tip = 0
sumTree (Bin x y z) = y + ( sumTree x ) + ( sumTree z )
