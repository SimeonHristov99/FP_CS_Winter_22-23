-- fix remq in notes_racket
-- answer Vasilii (debug hw2)
-- Yovor give feedback for week 6

main :: IO()
main = do
    print ((\ x -> x + 5) 10 == 15)
    print $ (\ x -> x + 5) 10 == 15
    print $ "Hello world"
