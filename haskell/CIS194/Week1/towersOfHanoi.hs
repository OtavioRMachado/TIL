type Peg = String
type Move = (Peg, Peg)
hanoi :: Integer -> Peg -> Peg -> Peg -> [Move]

hanoi 0 nameA nameB nameC = []
hanoi disks nameA nameB nameC = [(nameA, nameC)] ++ hanoi' (disks-1) nameA nameB nameC

hanoi' disks nameA nameB nameC = [(nameA, nameB)]