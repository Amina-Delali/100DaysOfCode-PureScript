module Main where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Control.Plus (empty)
import Prelude
import Control.MonadZero
import Data.Array (null , length)
import Data.Array
import Data.Foldable
import Data.Array.Partial (head, tail)
import Partial.Unsafe (unsafePartial)


factors :: Int -> Array (Array Int)
factors n = filter (\xs -> product xs == n) $ do
  i <- 1 .. n
  j <- i .. n
  pure [i, j]

isPrime :: Int-> Boolean
isPrime n =  (length (factors n) == 1)

cartesianP arr1 arr2 = do
  i <- arr1
  j <- arr2
  [[i,j]]

phyto :: Int -> Array (Array Int)
phyto n = do
  a <- 1 .. n
  b <- 1 .. n
  c <- 1 .. n
  guard $ (a*a + b*b == c*c) 
  pure [a , b , c]

main :: Effect Unit
main = do
 log "Arrays"
