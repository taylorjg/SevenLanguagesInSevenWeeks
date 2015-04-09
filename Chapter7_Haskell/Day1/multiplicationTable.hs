import Data.List (intercalate)

multiplcationTable n = [ (m2, m1, m1 * m2) | m1 <- [1..n], m2 <- [1..n] ]

group :: Int -> [a] -> [[a]]
group _ [] = []
group n xs = g:group n rest where (g,rest) = splitAt n xs

main :: IO ()
main = 
	do
		let n = 12
		let tableTuples = multiplcationTable n
		let formattedLines = map formatLine tableTuples
		let tables = group n formattedLines
		let tablesWithSeparators = intercalate [""] tables
		mapM_ putStrLn tablesWithSeparators
		where
			formatLine (m1,m2,r) = show m1 ++ " x " ++ show m2 ++ " = " ++ show r
