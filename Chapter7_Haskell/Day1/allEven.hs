isEven :: Int -> Bool
isEven x = x `mod` 2 == 0

allEven1 :: [Int] -> Bool
allEven1 = all isEven

allEven2 :: [Int] -> Bool
allEven2 = not . (any $ not . isEven)

allEven3 :: [Int] -> Bool
allEven3 [] = True
allEven3 (x:xs) = isEven x && allEven3 xs

testAllEven :: String -> ([Int] -> Bool) -> IO ()
testAllEven n f =
    do
        test n f [1,2,3]
        test n f [2,4,6]
        where
            test n f xs = 
                putStrLn $ n ++ " " ++ show xs ++ " = " ++ (show $ f xs)


main :: IO ()
main =
    do
        testAllEven "allEven1" allEven1
        testAllEven "allEven2" allEven2
        testAllEven "allEven3" allEven3
