import Data.List (partition)

sort :: Ord a => [a] -> [a]
sort [] = []
sort (x:xs) =
    concat [sort as, return x, sort bs]
    where
        (as,bs) = partition (<x) xs

main :: IO ()
main = 
    do
        let xs = [1,4,5,6,2,3,1,4,5,7,8]
        putStrLn $ show $ sort xs
