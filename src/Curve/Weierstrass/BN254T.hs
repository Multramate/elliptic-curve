module Curve.Weierstrass.BN254T
  ( Curve(..)
  , Fp2
  , Group(..)
  , P
  , Point(..)
  , WPoint
  , WCurve(..)
  , _a
  , _b
  , _g
  , _h
  , _n
  , _p
  , _x
  , _y
  ) where

import Protolude

import ExtensionField

import Curve (Curve(..))
import Curve.Weierstrass (Point(..), WCurve(..), WPoint)
import Group (Group(..))
import Curve.Weierstrass.BN254 (Fp)

-------------------------------------------------------------------------------
-- Types
-------------------------------------------------------------------------------

-- | BN254T curve.
data BN254T

-- | Field of BN254T curve.
data PolynomialU
instance IrreducibleMonic Fp PolynomialU where
  split _ = x * x + 1
type Fp2 = ExtensionField Fp PolynomialU

-- | BN254T curve is a Weierstrass curve.
instance WCurve BN254T Fp2 where
  a_ = const _a
  {-# INLINE a_ #-}
  b_ = const _b
  {-# INLINE b_ #-}
  g_ = _g
  {-# INLINE g_ #-}
  h_ = const _h
  {-# INLINE h_ #-}
  n_ = const _n
  {-# INLINE n_ #-}
  p_ = const _p
  {-# INLINE p_ #-}
  x_ = const _x
  {-# INLINE x_ #-}
  y_ = const _y
  {-# INLINE y_ #-}

-- | Point of BN254T curve.
type P = WPoint BN254T Fp2

-------------------------------------------------------------------------------
-- Parameters
-------------------------------------------------------------------------------

-- | Coefficient @A@ of BN254T curve.
_a :: Fp2
_a = fromList [
              ]
{-# INLINE _a #-}

-- | Coefficient @B@ of BN254T curve.
_b :: Fp2
_b = fromList [ 0x2b149d40ceb8aaae81be18991be06ac3b5b4c5e559dbefa33267e6dc24a138e5
              , 0x9713b03af0fed4cd2cafadeed8fdf4a74fa084e52d1852e4a2bd0685c315d2
              ]
{-# INLINE _b #-}

-- | Generator of BN254T curve.
_g :: P
_g = A _x _y
{-# INLINE _g #-}

-- | Cofactor of BN254T curve.
_h :: Integer
_h = 0x30644e72e131a029b85045b68181585e06ceecda572a2489345f2299c0f9fa8d
{-# INLINE _h #-}

-- | Order of BN254T curve.
_n :: Integer
_n = 0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f0000001
{-# INLINE _n #-}

-- | Characteristic of BN254T curve.
_p :: Integer
_p = 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47
{-# INLINE _p #-}

-- | Coordinate @X@ of BN254T curve.
_x :: Fp2
_x = fromList [ 0x1800deef121f1e76426a00665e5c4479674322d4f75edadd46debd5cd992f6ed
              , 0x198e9393920d483a7260bfb731fb5d25f1aa493335a9e71297e485b7aef312c2
              ]
{-# INLINE _x #-}

-- | Coordinate @Y@ of BN254T curve.
_y :: Fp2
_y = fromList [ 0x12c85ea5db8c6deb4aab71808dcb408fe3d1e7690c43d37b4ce6cc0166fa7daa
              , 0x90689d0585ff075ec9e99ad690c3395bc4b313370b38ef355acdadcd122975b
              ]
{-# INLINE _y #-}
