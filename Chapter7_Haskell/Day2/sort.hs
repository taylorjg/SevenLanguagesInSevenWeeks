import Data.List (partition)

sort :: Ord a => [a] -> [a]
sort [] = []
sort (x:xs) =
	concat [sort as, return x, sort bs]
	where
		(as,bs) = partition (<x) xs

main :: IO ()
main = putStrLn $ show $ sort [3,2,1]
