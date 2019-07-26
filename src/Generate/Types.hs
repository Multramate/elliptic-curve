module Generate.Types
  ( Element(..)
  , Field(..)
  ) where

import Protolude

-------------------------------------------------------------------------------
-- Types
-------------------------------------------------------------------------------

data Element = BF Integer
             | EF [Element]
             | PF Integer

data Field = BinaryField Integer
           | ExtensionField
           | PrimeField Integer
