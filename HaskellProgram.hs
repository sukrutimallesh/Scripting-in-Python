import System.Environment

-- Function to subtract each element from 255 in a list
subtractFrom255 :: [Int] -> [Int]
subtractFrom255 [] = [] -- Base case: Empty list returns an empty list
subtractFrom255 (x : xs) = (255 - x) : subtractFrom255 xs -- Subtract each element from 255 and recurse on the rest of the list

main :: IO ()
main = do
  args <- getArgs -- Collect command line arguments as strings
  let numbers = map read args :: [Int] -- Convert command line arguments to a list of integers
      result = subtractFrom255 numbers -- Subtract 255 from each element in the list
      resultStrings = map show result -- Convert the resulting integers to strings
      outputString = unwords resultStrings -- Combine the strings with space separation
  putStrLn outputString -- Print the resulting string
