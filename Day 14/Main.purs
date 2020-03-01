module Main where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Math

import Data.Monoid

import Data.Newtype
import Data.Picture
import Data.Maybe
import Data.Array (length, head, tail)
import Data.Array
import Data.Eq

import Partial.Unsafe


data NonEmpty a = NonEmpty a (Array a)
instance eqNE :: (Eq a , Eq (Array a)) => Eq  (NonEmpty a) where
 eq a1 a2 = (eq a1 a2 )









  
main :: Effect Unit  
main = do
 log "Type Classes 2"
