module Main where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Math

import Data.Monoid
import Data.Foldable (foldMap, foldr, foldl, class Foldable)
import Data.Newtype
import Data.Picture



newtype Complex = Complex
   { real :: Number
   , imaginary :: Number
   }



newtype Shape2 = Shape2 Shape

instance showShape :: Show Shape2 where
  show (Shape2 x)= showShape x
  
area :: Shape -> Number
area (Circle p r)= pi * r * r
area (Rectangle p w h) = w * h
area _ = 0.0

instance showComplex :: Show Complex where
  show (Complex {real: x, imaginary : y}) = show x <> " + " <> show y <> " i "


instance eqComp :: Eq Complex where
  eq (Complex num1) (Complex num2) = num1.real == num2.real && num1.imaginary == num2.imaginary
  
main :: Effect Unit  
main = do
 log "Type Classes"
