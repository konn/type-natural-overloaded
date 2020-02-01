{-# LANGUAGE DataKinds, FlexibleContexts, FlexibleInstances, GADTs #-}
{-# LANGUAGE MultiParamTypeClasses, PolyKinds, ScopedTypeVariables #-}
{-# LANGUAGE TypeOperators, UndecidableInstances                   #-}
{-# OPTIONS_GHC -fplugin GHC.TypeLits.Presburger #-}
module Data.Type.Ordinal.Overloaded where
import Data.Singletons.Prelude
import Data.Singletons.Prelude.Enum (ToEnum)
import Data.Singletons.Prelude.Ord
import Data.Type.Ordinal
import GHC.TypeNats                 (type (+), KnownNat)
import Overloaded

instance (HasOrdinal nat, SingI n, SingI (ToEnum k :: nat), (ToEnum k < n) ~ True)
      => FromNumeral k (Ordinal (n :: nat)) where
  fromNumeral = sNatToOrd (sing :: Sing (ToEnum k))
