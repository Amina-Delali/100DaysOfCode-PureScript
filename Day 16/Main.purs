module Main where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Math


import Data.Array (length, nubByEq)
import Data.Array

import Data.Eq

import Data.Hashable

data NonEmpty a = NonEmpty a (Array a)
instance eqNE :: (Eq a , Eq (Array a)) => Eq  (NonEmpty a) where
 eq a1 a2 = (eq a1 a2 )



testDup :: forall a. Hashable a => Array a -> Boolean
testDup arr = not (arr == (withoutD arr) ) where
  withoutD ::  Hashable a => Array a -> Array a
  withoutD = nubByEq hashEqual
  

even :: Int -> Boolean
even 0 = true
even n = not even  (n-1)

evenN :: Int -> Int
evenN n = if even n
          then 1
          else 0






  
main :: Effect Unit  
main = do
 log "Type Classes 3"
