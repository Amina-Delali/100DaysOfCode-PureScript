module Main where

import Prelude
import Effect (Effect)
import Effect.Console (log)

import FileOperations
import Data.Path
import Data.Array
import  Control.MonadZero

allFilesND :: Path -> Array Path
allFilesND file = filter (\f -> not isDirectory f) $ file : do
  child <- ls file   
  allFilesND child

sameCity p1 p2 = p1.address.city == p2.address.city

fromSingleton :: forall a. a ->  Array a -> a
fromSingleton m [a] = a
fromSingleton m _= m

 



main :: Effect Unit
main = do
 log "Pattern matching"
