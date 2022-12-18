main :: IO()
main = do
    print $ maxGoalMinPoints tournament == "B"
    print $ surpassSelf tournament == ["A", "B"]

tournament = [("A", "B", 1, 0), ("B", "C", 4, 1), ("C", "B", 3, 3), ("B", "A", 1, 2), ("A", "C", 0, 1)]



