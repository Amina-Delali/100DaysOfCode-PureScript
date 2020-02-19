module Main where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Data.List


type Address=
 { street :: String,
   city :: String,
   state :: String
 }



type Entry=
 { firstName :: String,
   lastName :: String,
   address :: Address
 }

type AddressBook = List Entry


showAddress :: Address -> String
showAddress address = address.street <> ", " <>
                      address.city <> ", " <>
                      address.state



showEntry :: Entry -> String
showEntry entry = entry.firstName <> ", " <>
                  entry.lastName <> ", " <>
                  showAddress entry.address




 


main :: Effect Unit
main = do
  log "Hello sailor!"
