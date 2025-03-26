-- Declaring variables

w = 10 -- declaration
x = w * w 
y = x - (5 * 10) 
z = y / 5 

-- does haskell prefer spaces or not?

doubleSmallNumber x = if x > 100
                      then x
                      else x*2

-- ' is apparently valid for variable names, and is used for variations
doubleSmallNumber' x = (if x > 100 then x else x*2) +  1

-- LISTS N STUFF :) 

a = [1,2,3] ++ [4,5,6] -- append lists

-- double lists work too 
b = [[1,2,3,4],[5,3,3,3],[1,2,2,3,4],[1,2,3]]

-- a = [1,2,3,4,5,6], from above

first = head a -- 1
lastValue  = last a -- 6
tailValue  = tail a -- 2,3,4,5,6 "everything but the head"
initValue  = init a -- 1,2,3,4,5

lengthOfList = length a -- 6 

comparedEmptyList = null [] -- True "use instead of ==="
reversedList = reverse a -- [6,5,4,3,2,1] 

firstThree = take 3 a -- [1,2,3] First 3 from beginning
firstFive = take 5 a -- You get the idea.
takeZero = take 0 a -- [] is the same as null

pointProven = null (take 0 a)

-- drop "drops" the number of elements
droppedThree = drop 3 a -- [4,5,6]
droppedOne = drop 1 a -- [2,3,4,5,6]
droppedAll = drop lengthOfList a -- []

minimumNumber = minimum a -- take a guess
maximumNumber = maximum a --

sumOfNums = sum a 
productOfNums = product a

-- is thing is list?
isFourInList = elem 4 a -- True
isTenInList = elem 10 a -- False

-- Cowboy ranges -- 

-- Sequence to 20
seq = [1..20] 
alpha = ['a'..'z'] -- alphabet!!
kayToZee = ['K'..'Z']

-- steps cool too
evens = [2,4..20]
everyThird = [3,6..20] 

-- Cycle takes a list and cycles it into an infinite list. You gotta slice it
cycled = take 10 (cycle [1,2,3]) -- [1,2,3,1,2,3,1,2,3,1]

--repeat takes an element and produces an infinite list of just that
repeated = take 10 (repeat 5)



-- List comprehension
evenToTwenty = [x*2 | x <- [1..10]] -- Radical complex thing applied to 1 to 10, arrow takes from list


-- Predicate
overTwelveEvens = [x*2 | x <- [1..10], x*2 >= 12]  -- Only if result is over than 12

-- Else? 
boomBangs xs = [if x < 10 then "BOOM" else "BANG" | x <- xs, odd x] -- only if odd

printMe = boomBangs [7..13]

whatTheFuck = [ x | x <- [10..20], x /= 13, x /= 15, x /= 19] --  all numbers from 10 to 20 that are not 13, 15 or 19

productsOverFifty = [ x*y | x <- [2,5,10], y <- [8,10,11], x*y > 50]

iJustLearntVariablesCanHaveNumb3r5 = 35 


-- nouns and adjectives

jobs = ["hobo","blacksmith","pope","miner","servant"]
adjectives = ["lazy","grouchy","scheming","bossy","angry","sad","happy","cheerful","benevolent","kind"]

population = [adjective ++ " " ++ job | adjective <- adjectives, job <- jobs]


-- our own length function

length' xs = sum [1 | _ <- xs]

-- tuples 
-- tuples can have different types, but should be the same size. 
-- fst (1, True) -- 1
-- snd (2, False) -- False
-- operating only on pairs
--
--
zipOfTuples = zip [1,2,3,4,5] [5,5,5,5,5] -- [(1,5),(2,5),(3,5),(4,5),(5,5)]

keys = zip [1..5] ['a'..'e']

-- haskell is lazy and can shit off infinite lists to match shorter lists
--
keys' = zip [1..] ['a'..'z']

-- population zips
population' = zip jobs adjectives -- [("hobo","lazy"),("blacksmith","grouchy"),("pope","scheming"),("miner","bossy"),("servant","angry")]s