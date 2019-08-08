module Curve.Weierstrass.SECP160R2
  ( Curve(..)
  , Fq
  , Fr
  , Group(..)
  , PA
  , PJ
  , PP
  , Point(..)
  , WCurve(..)
  , WPoint
  , WACurve(..)
  , WAPoint
  , WJCurve(..)
  , WJPoint
  , WPCurve(..)
  , WPPoint
  , _a
  , _b
  , _h
  , _q
  , _r
  , _x
  , _y
  , fromAtoJ
  , fromAtoP
  , fromJtoA
  , fromPtoA
  , gA
  , gJ
  , gP
  ) where

import Protolude

import PrimeField

import Curve.Weierstrass

-------------------------------------------------------------------------------
-- Types
-------------------------------------------------------------------------------

-- | SECP160R2 curve.
data SECP160R2

-- | Field of points of SECP160R2 curve.
type Fq = PrimeField 0xfffffffffffffffffffffffffffffffeffffac73

-- | Field of coefficients of SECP160R2 curve.
type Fr = PrimeField 0x100000000000000000000351ee786a818f3a1a16b

-- | SECP160R2 curve is a Weierstrass curve.
instance Curve 'Weierstrass c SECP160R2 Fq Fr => WCurve c SECP160R2 Fq Fr where
  a_ = const _a
  {-# INLINE a_ #-}
  b_ = const _b
  {-# INLINE b_ #-}
  h_ = const _h
  {-# INLINE h_ #-}
  q_ = const _q
  {-# INLINE q_ #-}
  r_ = const _r
  {-# INLINE r_ #-}
  x_ = const _x
  {-# INLINE x_ #-}
  y_ = const _y
  {-# INLINE y_ #-}

-- | Affine SECP160R2 curve point.
type PA = WAPoint SECP160R2 Fq Fr

-- | Affine SECP160R2 curve is a Weierstrass affine curve.
instance WACurve SECP160R2 Fq Fr where
  gA_ = gA
  {-# INLINE gA_ #-}

-- | Jacobian SECP160R2 point.
type PJ = WJPoint SECP160R2 Fq Fr

-- | Jacobian SECP160R2 curve is a Weierstrass Jacobian curve.
instance WJCurve SECP160R2 Fq Fr where
  gJ_ = gJ
  {-# INLINE gJ_ #-}

-- | Projective SECP160R2 point.
type PP = WPPoint SECP160R2 Fq Fr

-- | Projective SECP160R2 curve is a Weierstrass projective curve.
instance WPCurve SECP160R2 Fq Fr where
  gP_ = gP
  {-# INLINE gP_ #-}

-------------------------------------------------------------------------------
-- Parameters
-------------------------------------------------------------------------------

-- | Coefficient @A@ of SECP160R2 curve.
_a :: Fq
_a = 0xfffffffffffffffffffffffffffffffeffffac70
{-# INLINE _a #-}

-- | Coefficient @B@ of SECP160R2 curve.
_b :: Fq
_b = 0xb4e134d3fb59eb8bab57274904664d5af50388ba
{-# INLINE _b #-}

-- | Cofactor of SECP160R2 curve.
_h :: Integer
_h = 0x1
{-# INLINE _h #-}

-- | Characteristic of SECP160R2 curve.
_q :: Integer
_q = 0xfffffffffffffffffffffffffffffffeffffac73
{-# INLINE _q #-}

-- | Order of SECP160R2 curve.
_r :: Integer
_r = 0x100000000000000000000351ee786a818f3a1a16b
{-# INLINE _r #-}

-- | Coordinate @X@ of SECP160R2 curve.
_x :: Fq
_x = 0x52dcb034293a117e1f4ff11b30f7199d3144ce6d
{-# INLINE _x #-}

-- | Coordinate @Y@ of SECP160R2 curve.
_y :: Fq
_y = 0xfeaffef2e331f296e071fa0df9982cfea7d43f2e
{-# INLINE _y #-}

-- | Generator of affine SECP160R2 curve.
gA :: PA
gA = A _x _y
{-# INLINE gA #-}

-- | Generator of Jacobian SECP160R2 curve.
gJ :: PJ
gJ = J _x _y 1
{-# INLINE gJ #-}

-- | Generator of projective SECP160R2 curve.
gP :: PP
gP = P _x _y 1
{-# INLINE gP #-}
