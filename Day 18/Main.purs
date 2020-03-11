module Main where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Math
import Control.Apply

import Data.Array (length, nubByEq)
import Data.Array

import Data.Eq
import Data.Maybe

import Data.Hashable
import Data.AddressBook
import Data.AddressBook.Validation
import Data.Validation.Semigroup (V, unV, invalid)
import Partial.Unsafe
import Data.Either

import Node.FS 
import Data.String.Regex (Regex, test, regex)
import Data.String.Regex.Flags (noFlags)




stateRegex :: Regex
stateRegex =
  unsafePartial
    case regex "^[A-Za-z]{2}$" noFlags of
      Right r -> r

matchesS :: String -> Regex -> String -> V Errors Unit
matchesS _  regex value | test regex value = pure unit
matchesS field _     _     = invalid ["Field '" <> field <> "' did not match the required format"]

validateAddress2 :: Address -> V Errors Address
validateAddress2 (Address o) =
  address <$> (nonEmpty "Street" o.street *> pure o.street)
          <*> (nonEmpty "City"   o.city   *> pure o.city)
          <*> (matchesS "State"  stateRegex  o.state *> pure o.state)




main :: Effect Unit  
main = do
 log "Applicative validation 2"
