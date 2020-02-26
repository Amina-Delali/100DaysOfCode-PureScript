module Main where

import Prelude
import Effect (Effect)
import Effect.Console (log)











fact2 :: Int -> Int
fact2 0 = 1
fact2 n = fact2 (n-1) * n

binConf :: Int -> Int -> Int
binConf n 0 = 1
binConf n k | n == k = 1
            | n < k = 0
            | otherwise = (binConf (n-1) (k-1)) + (binConf (n-1) k )


main :: Effect Unit
main = do
 log "Arrays"
