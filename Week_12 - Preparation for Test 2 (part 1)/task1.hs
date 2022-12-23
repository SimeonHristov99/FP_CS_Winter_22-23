import Data.List

main :: IO()
main = do
    print $ maxGoalMinPoints tournament == "B"
    print $ surpassSelf tournament == ["A", "B"]

tournament = [("A", "B", 1, 0), ("B", "C", 4, 1), ("C", "B", 3, 3), ("B", "A", 1, 2), ("A", "C", 0, 1)]

type Team = String
type Points = Int
type Goals = Int
type Match = (Team, Team, Goals, Goals)
type Tournament = [Match]

wonAll :: Team -> Team -> Tournament -> Bool
wonAll team1 team2 ms = (not $ null (getDirectMatches team1 team2 ms)) && (all (\ (t1, t2, g1, g2) -> team1 == t1 && g1 > g2 || team1 == t2 && g2 > g1) $ getDirectMatches team1 team2 ms)

wonAny :: Team -> Team -> Tournament -> Bool
wonAny team1 team2 ms = (not $ null (getDirectMatches team1 team2 ms)) && (any (\ (t1, t2, g1, g2) -> team1 == t1 && g1 > g2 || team1 == t2 && g2 > g1) $ getDirectMatches team1 team2 ms)

surpass :: Team -> Team -> Tournament -> Bool
surpass team1 team2 ms = wonAll team1 team2 ms || (any (\ team3 -> wonAny team1 team3 ms && surpass team3 team2 ms) $ filter (\ xs -> notElem xs [team1, team2]) $ teams ms)

surpassSelf :: Tournament -> [Team]
surpassSelf ms = filter (\ t -> surpass t t ms) $ teams ms

goalDiff :: Team -> Tournament -> Goals
goalDiff t ms = foldl (\ acc (t1, t2, g1, g2) -> if t == t1 then acc + g1 - g2
                                            else if t == t2 then acc + g2 - g1
                                            else acc) 0 ms

getPoints :: Team -> Tournament -> Goals
getPoints t ms = foldl (\ acc (t1, t2, g1, g2) -> if t == t1 && g1 > g2 || t == t2 && g2 > g1 then acc + 3
                                            else if (t == t1 || t == t2) && g1 == g2 then acc + 1
                                            else acc) 0 ms

getDirectMatches :: Team -> Team -> Tournament -> Tournament
getDirectMatches team1 team2 ms = filter (\ (t1, t2, _, _) -> team1 == t1 && team2 == t2 || team1 == t2 && team2 == t1) ms

maxGoalMinPoints :: Tournament -> Team
maxGoalMinPoints ms = fst $ foldl1 (\ l1@(_, p1) l2@(_, p2) -> if p1 > p2 then l2 else l1) $ map (\ (t, _) -> (t, getPoints t ms)) teamsMaxGoal 
 where
    teamsMaxGoal = filter ((== getMaxGoal) . snd) teamGoalDiff
    getMaxGoal = snd $ foldl1 (\ l1@(_, g1) l2@(_, g2) -> if g1 > g2 then l1 else l2) teamGoalDiff
    teamGoalDiff = map (\ t -> (t, goalDiff t ms)) $ teams ms

teams :: Tournament -> [Team]
teams ms = nub $ concat [ [t1, t2] | (t1, t2, _, _) <- ms]
