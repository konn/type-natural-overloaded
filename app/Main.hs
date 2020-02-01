{-# OPTIONS_GHC -fplugin Overloaded -fplugin-opt=Overloaded:Numerals #-}
{-# LANGUAGE DataKinds #-}
module Main where
import Control.Exception
import Data.Type.Natural
import Data.Type.Ordinal
import Data.Type.Ordinal.Overloaded ()

main :: IO ()
main = do
  print (3 :: Ordinal 4)
  print (0 :: Ordinal (S Zero))

