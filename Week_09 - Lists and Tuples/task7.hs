import Data.Char
import Data.List

main :: IO()
main = do
    print $ countOccurrences "Test" == [('e',1),('s',1),('t',2)]
    print $ countOccurrences "ThisIsAReallyLongWordContaingAlmostEveryCharacter" == [('a',6),('c',3),('d',1),('e',4),('g',2),('h',2),('i',3),('l',4),('m',1),('n',3),('o',4),('r',5),('s',3),('t',4),('v',1),('w',1),('y',2)]

countOccurrences :: String -> [(Char, Int)]
countOccurrences = map (\ ys -> (head ys, length ys)) . group . sort . map toLower
