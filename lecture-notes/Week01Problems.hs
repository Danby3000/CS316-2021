module Week01Problems where
import Prelude hiding (Left, Right, reverse)

import Week01
--import Prelude hiding (Left, Right, reverse)

{----------------------------------------------------------------------}
{- Tutorial Questions                                                 -}
{----------------------------------------------------------------------}

{- In the questions below, replace 'undefined' with your answers. Use
   GHCi to test them.-}

{- 1. Write a function: -}

isHorizontal :: Direction -> Bool
isHorizontal Left = True
isHorizontal Right = True 
isHorizontal _ = False

{- that returns 'True' if the direction is 'Left' or 'Right', and
   'False' otherwise. -}


{- 2. Write a function: -}

flipHorizontally :: Direction -> Direction
flipHorizontally Left  = Right
flipHorizontally Right = Left
flipHorizontally Up    = Up 
flipHorizontally Down  = Down 


{- that flips horizontally (Left <-> Right, Up and Down stay the same). -}


{- 3. Rewrite 'equalDirections' to take a 'Pair Direction Direction' as
      input: -}

pairOfEqualDirections :: Pair Direction Direction -> Bool
pairOfEqualDirections (MkPair Up Up) = True 
pairOfEqualDirections (MkPair Down Down) = True 
pairOfEqualDirections (MkPair Left Left) = True 
pairOfEqualDirections (MkPair Right Right) = True 
pairOfEqualDirections _ = False



{- 4. Define a datatype 'Triple a b c' for values that have three
      components. Write functions 'get1of3 :: Triple a b c -> a',
      'get2of3' and 'get3of3' that return the first, second and third
      components. You will have to come up with the type signatures
      for the second and third one. -}

data Triple a b c = MkTriple a b c
      deriving Show

-- get1of3 :: Triple a b c -> as
-- get1of3 (MkTriple x _ _) = x

-- get2of3 :: Triple a b c -> as
-- get2of3 (MkTriple _ y _) = y

-- get3of3 :: Triple a b c -> as
-- get3of3 (MkTriple _ _ z) = z

{- 5. Pattern matching on specific characters is done by writing the
      character to match. For example: -}

isA :: Char -> Bool
isA 'A' = True
isA _   = False

{-    Write a function 'dropSpaces' :: [Char] -> [Char]' that drops
      spaces from the start of a list of characters. For example, we
      should have:

         *Week01> dropSpaces "   hello"
         "hello"

      (Strings in Haskell are really lists of 'Char's) -}

dropSpaces :: [Char] -> [Char]
dropSpaces (' ' : str) = dropSpaces str
dropSpaces str         = str

{- 6. Using 'reverse' and 'dropSpaces', write a function that removes
      spaces at the *end* of a list of characters. For example:

         *Week10> dropTrailingSpaces "hello    "
         "hello"
-}

dropTrailingSpaces :: [Char] -> [Char]
dropTrailingSpaces str = reverse (dropSpaces (reverse str)) 

