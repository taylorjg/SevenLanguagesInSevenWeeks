import Data.List (partition)

sort :: Ord a => (a -> a -> Bool) -> [a] -> [a]
sort _ [] = []
sort f (x:xs) =
    concat [sort f as, return x, sort f bs]
    where
        (as,bs) = partition (`f` x) xs

main :: IO ()
main = 
    do
        let xs = [1,4,5,6,2,3,1,4,5,7,8]
        putStrLn $ show $ sort (<) xs
        putStrLn $ show $ sort (>) xs
