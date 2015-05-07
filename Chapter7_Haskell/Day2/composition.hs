every3rd x = [x, x + 3..]
every5th y = [y, y + 5..]
every8th x y = zipWith (+) (every3rd x) (every5th y)

main :: IO ()
main =
    do
        let x = 10
        let y = 3
        putStrLn $ show $ take 10 $ every3rd x
        putStrLn $ show $ take 10 $ every5th y
        putStrLn $ show $ take 10 $ every8th x y
