module Main where

import Prelude
import Effect (Effect)
import Effect.Console (log)


import Data.Picture
import Data.Maybe

origin :: Point
origin = Point {x,y}
 where
   x = 0.0
   y = 0.0

myShape :: Shape
myShape = Circle p 10.0
 where
   p :: Point
   p =  Point {x:0.0 , y: 0.0}

myShape2 :: Shape
myShape2 = Circle origin 10.0

scaleS :: Shape -> Shape
scaleS (Circle c r) = Circle c (2.0 * r)
scaleS (Rectangle c w h) = Rectangle c (2.0 * w) (2.0 * h)
scaleS  (Line start end) = Line (scaleP start)  (scaleP end)
                            where
                              scaleP :: Point -> Point
                              scaleP (Point {x,y}) = Point {x: (2.0*x) , y:(2.0 * y)}
scaleS  (Text loc text) = Text loc text

extractT :: Shape -> Maybe String 
extractT (Text loc text) =   Just text
extractT _ = Nothing


main :: Effect Unit
main = do
 log "ADTs"
