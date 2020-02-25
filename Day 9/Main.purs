module Main where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Control.MonadZero
import Data.Foldable (foldl, foldr)
import Data.Array.Partial (head, tail)
import Partial.Unsafe (unsafePartial)
import Data.Array








testT :: Array Boolean -> Boolean
testT arr = foldl (\acc n -> ( acc && n) ) true arr

reversef :: forall a. Array a -> Array a
reversef = foldl (\acc n -> [n] <> acc) []

main :: Effect Unit
main = do
 log "Arrays"
