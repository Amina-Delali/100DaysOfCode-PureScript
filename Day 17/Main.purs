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


lifta :: Maybe Number -> Maybe Number -> Maybe Number
lifta = lift2 (+)

liftmi :: Maybe Number -> Maybe Number -> Maybe Number
liftmi = lift2 (-)

liftmu :: Maybe Number -> Maybe Number -> Maybe Number
liftmu = lift2 (*)

liftd :: Maybe Number -> Maybe Number -> Maybe Number
liftd = lift2 (/)

main :: Effect Unit  
main = do
 log "Applicative validation"
