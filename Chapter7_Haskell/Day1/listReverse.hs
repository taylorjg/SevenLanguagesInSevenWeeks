listReverse1 :: [a] -> [a]
listReverse1 [] = []
listReverse1 (x:xs) = listReverse1 xs ++ [x]

listReverse2 :: [a] -> [a]
listReverse2 xs = foldl (flip (:)) [] xs

listReverse3 :: [a] -> [a]
listReverse3 xs = 
    loop xs []
    where
        loop [] acc = acc
        loop (x:xs) acc = loop xs (x:acc)

testListReverse n f =
    do
        test n f "abcdefg"
        where
            test n f xs = 
                putStrLn $ n ++ " " ++ show xs ++ " = " ++ (show $ f xs)

main :: IO ()
main =
    do
        testListReverse "listReverse1" listReverse1
        testListReverse "listReverse2" listReverse2
        testListReverse "listReverse3" listReverse3
