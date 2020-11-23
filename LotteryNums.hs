module LotteryNums where

import Control.Monad.Random
import System.Random

balls :: [Int]
balls = [1 .. 59]

giveRandomNumber :: (MonadRandom m) => m Int
giveRandomNumber = do
  let n = length balls
  i <- getRandomR (0, n -1)
  return (balls !! i)

main = do
  res <- replicateM 6 giveRandomNumber
  putStrLn $ unwords . map show $ res