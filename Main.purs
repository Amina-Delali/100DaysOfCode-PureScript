module Main where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Effect.Class.Console

import Math (pi)

circleArea :: Number -> Number
circleArea r = pi * r * r

main :: Effect Unit
main = do
  logShow (circleArea 5.0 )
 
