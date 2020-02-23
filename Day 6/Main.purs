module Main where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Data.List
import Control.Plus (empty)
import Data.Maybe

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


aBook :: AddressBook
aBook = empty

insertEntry :: Entry -> AddressBook -> AddressBook 
insertEntry = Cons



findEntry :: String -> String -> AddressBook -> Maybe Entry
findEntry  firstN lastN = head <<< filter filterEntry 
 where
   filterEntry :: Entry -> Boolean
   filterEntry entry = entry.firstName == firstN && entry.lastName == lastN

findEntryS  street = head <<< filter filterEntryS 
 where
   filterEntryS :: Entry -> Boolean
   filterEntryS entry = entry.address.street == street



printEntry firstName lastName book = map showEntry (findEntry firstName lastName book)


nameEx :: String -> String -> AddressBook -> Boolean
nameEx firstN lastN book =  not ( (printEntry firstN lastN book) == Nothing )

deleteDup :: AddressBook -> Maybe Entry
deleteDup  = head <<< nubBy delEqual 
 where
   delEqual :: Entry -> Entry -> Boolean
   delEqual entry1 entry2 = entry1.firstName == entry1.firstName && entry2.lastName == entry2.lastName

fact :: Int -> Int
fact 0 = 1
fact n = n * fact (n-1)

even :: Int -> Boolean
even 0 = true
even n = not even (n-1)



main :: Effect Unit
main = do
 log "Testing Records and Recursion"
