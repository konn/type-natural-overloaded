{-# LANGUAGE DataKinds, FlexibleInstances, GADTs, KindSignatures #-}
{-# LANGUAGE MultiParamTypeClasses                               #-}
{-# OPTIONS_GHC -Wno-orphans #-}
module Data.Type.Ordinal.Natural.Overloaded where
import           Data.Singletons.Prelude
import           Data.Singletons.Prelude.Enum       (ToEnum)
import           Data.Singletons.Prelude.Ord
import qualified Data.Type.Natural                  as PN
import           Data.Type.Natural.Builtin
import           Data.Type.Natural.Class.Arithmetic
import           Data.Type.Ordinal
import           Data.Type.Ordinal.Overloaded
import           GHC.TypeNats                       (KnownNat, Nat)
import           Overloaded

instance (k ~ n, KnownNat n)
      => FromNumeral k (Sing (n :: Nat)) where
  fromNumeral = sing

instance (ToPeano k ~ n, SingI n)
  => FromNumeral k (Sing (n :: PN.Nat))  where
  fromNumeral = sing
