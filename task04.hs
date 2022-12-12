main :: IO()
main = do
    print $ divideNoPM (10, 5) == (2, 0) -- 10 / 5 = 2 and 10 % 5 = 0
    print $ divideNoPM (69, 42) == (1, 27)

    print $ dividePM (10, 5) == (2, 0)
    print $ dividePM (69, 42) == (1, 27)

    print $ (\ (x, y) -> (div x y, mod x y)) (10, 5) == (2, 0)
    print $ (\ (x, y) -> (div x y, mod x y)) (69, 42) == (1, 27)

dividePM :: (Integral a) => (a, a) -> (a, a)
dividePM (x, 0) = error "y is 0"
dividePM (x, y) = (div x y, mod x y)

divideNoPM :: (Integral a) => (a, a) -> (a, a)
divideNoPM pair
 | snd pair == 0 = error "y is 0"
 | otherwise = (div (fst pair) (snd pair), mod (fst pair) (snd pair))
