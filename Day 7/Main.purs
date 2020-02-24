module Main where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Control.Plus (empty)
import Prelude

import Data.Array (null)
import Data.Array
import Data.Array.Partial (head, tail)
import Partial.Unsafe (unsafePartial)



fact :: Int -> Int
fact 0 = 1
fact n = n * fact (n-1)

even :: Int -> Boolean
even 0 = true
even n = not even (n-1)



length :: forall a. Array a -> Int
length arr =
  if null arr
    then 0
    else 1 + length (unsafePartial tail arr)


squareA ar = map (\n -> n * n) ar

remNeg ar = filter (\n -> n > 0) ar

infix 9 filter as <$?>

main :: Effect Unit
main = do
 log "Arrays"
