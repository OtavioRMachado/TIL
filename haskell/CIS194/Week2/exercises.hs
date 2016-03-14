lastButOne :: [a] -> a
lastButOne x = last (take 2 (reverse x))