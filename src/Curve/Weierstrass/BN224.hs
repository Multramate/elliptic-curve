module Curve.Weierstrass.BN224
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

-- | BN224 curve.
data BN224

-- | Field of points of BN224 curve.
type Fq = PrimeField 0xfffffffffff107288ec29e602c4520db42180823bb907d1287127833

-- | Field of coefficients of BN224 curve.
type Fr = PrimeField 0xfffffffffff107288ec29e602c4420db4218082b36c2accff76c58ed

-- | BN224 curve is a Weierstrass curve.
instance Curve 'Weierstrass c BN224 Fq Fr => WCurve c BN224 Fq Fr where
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

-- | Affine BN224 curve point.
type PA = WAPoint BN224 Fq Fr

-- | Affine BN224 curve is a Weierstrass affine curve.
instance WACurve BN224 Fq Fr where
  gA_ = gA
  {-# INLINE gA_ #-}

-- | Jacobian BN224 point.
type PJ = WJPoint BN224 Fq Fr

-- | Jacobian BN224 curve is a Weierstrass Jacobian curve.
instance WJCurve BN224 Fq Fr where
  gJ_ = gJ
  {-# INLINE gJ_ #-}

-- | Projective BN224 point.
type PP = WPPoint BN224 Fq Fr

-- | Projective BN224 curve is a Weierstrass projective curve.
instance WPCurve BN224 Fq Fr where
  gP_ = gP
  {-# INLINE gP_ #-}

-------------------------------------------------------------------------------
-- Parameters
-------------------------------------------------------------------------------

-- | Coefficient @A@ of BN224 curve.
_a :: Fq
_a = 0x0
{-# INLINE _a #-}

-- | Coefficient @B@ of BN224 curve.
_b :: Fq
_b = 0x3
{-# INLINE _b #-}

-- | Cofactor of BN224 curve.
_h :: Integer
_h = 0x1
{-# INLINE _h #-}

-- | Characteristic of BN224 curve.
_q :: Integer
_q = 0xfffffffffff107288ec29e602c4520db42180823bb907d1287127833
{-# INLINE _q #-}

-- | Order of BN224 curve.
_r :: Integer
_r = 0xfffffffffff107288ec29e602c4420db4218082b36c2accff76c58ed
{-# INLINE _r #-}

-- | Coordinate @X@ of BN224 curve.
_x :: Fq
_x = 0x1
{-# INLINE _x #-}

-- | Coordinate @Y@ of BN224 curve.
_y :: Fq
_y = 0x2
{-# INLINE _y #-}

-- | Generator of affine BN224 curve.
gA :: PA
gA = A _x _y
{-# INLINE gA #-}

-- | Generator of Jacobian BN224 curve.
gJ :: PJ
gJ = J _x _y 1
{-# INLINE gJ #-}

-- | Generator of projective BN224 curve.
gP :: PP
gP = P _x _y 1
{-# INLINE gP #-}
