module Main where
import Data.Array.Partial (tail, head)
import Partial.Unsafe (unsafePartial)

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Math

import Data.Monoid

import Data.Newtype
import Data.Picture
import Data.Maybe
import Data.Array (length)
import Data.Array
import Data.Array.Partial
import Data.Eq
import Data.AddressBook
import Data.List (nubBy)
import Partial.Unsafe


data NonEmpty a = NonEmpty a (Array a)
instance eqNE :: (Eq a , Eq (Array a)) => Eq  (NonEmpty a) where
 eq a1 a2 = (eq a1 a2 )

removeDup :: AddressBook -> AddressBook
removeDup  = nubBy equalE  where
    equalE :: Entry -> Entry -> Boolean
    equalE ent1 ent2= (ent1.firstName == ent2.firstName) && (ent1.lastName == ent2.lastName)


even :: Int -> Boolean
even 0 = true
even n = not even  (n-1)

evenN :: Int -> Int
evenN n = if even n
          then 1
          else 0


countEven ::  Array Int -> Int
countEven [] = 0
countEven arr = evenN ( unsafePartial head arr ) + countEven (unsafePartial tail arr) 



  
main :: Effect Unit  
main = do
 log "Type Classes 2"
