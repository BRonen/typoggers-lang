{-# OPTIONS_GHC -w #-}
module Parser (
      parse,
      Token (..),
      Expr (..),
      TypeDef (..),
      LowTerm (..),
      HighTerm (..),
      Factor (..)
) where
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5 t6 t7 t8
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,74) ([31488,16,1,4096,0,0,0,0,768,0,12,0,4096,0,0,0,0,0,4096,0,4219,0,32,64,32768,0,4216,30720,16,4216,30720,16,16384,4096,0,3072,0,12,0,0,0,16,0,0,0,1024,0,128,31488,16,4219,0,0,4,31488,16,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Expr","TypeDef","LowTerm","HighTerm","Factor","let","type","in","int","literal","bool","'\"'","'='","'+'","'-'","'*'","'/'","'('","')'","':'","%eof"]
        bit_start = st Prelude.* 24
        bit_end = (st Prelude.+ 1) Prelude.* 24
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..23]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (9) = happyShift action_2
action_0 (10) = happyShift action_8
action_0 (12) = happyShift action_9
action_0 (13) = happyShift action_10
action_0 (14) = happyShift action_11
action_0 (15) = happyShift action_12
action_0 (21) = happyShift action_13
action_0 (4) = happyGoto action_3
action_0 (5) = happyGoto action_4
action_0 (6) = happyGoto action_5
action_0 (7) = happyGoto action_6
action_0 (8) = happyGoto action_7
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (9) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (13) = happyShift action_21
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (24) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_2

action_5 (17) = happyShift action_19
action_5 (18) = happyShift action_20
action_5 _ = happyReduce_4

action_6 (19) = happyShift action_17
action_6 (20) = happyShift action_18
action_6 _ = happyReduce_7

action_7 _ = happyReduce_10

action_8 (13) = happyShift action_16
action_8 _ = happyFail (happyExpListPerState 8)

action_9 _ = happyReduce_13

action_10 _ = happyReduce_12

action_11 _ = happyReduce_14

action_12 (13) = happyShift action_15
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (9) = happyShift action_2
action_13 (10) = happyShift action_8
action_13 (12) = happyShift action_9
action_13 (13) = happyShift action_10
action_13 (14) = happyShift action_11
action_13 (15) = happyShift action_12
action_13 (21) = happyShift action_13
action_13 (4) = happyGoto action_14
action_13 (5) = happyGoto action_4
action_13 (6) = happyGoto action_5
action_13 (7) = happyGoto action_6
action_13 (8) = happyGoto action_7
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (22) = happyShift action_29
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (15) = happyShift action_28
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (16) = happyShift action_27
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (12) = happyShift action_9
action_17 (13) = happyShift action_10
action_17 (14) = happyShift action_11
action_17 (15) = happyShift action_12
action_17 (21) = happyShift action_13
action_17 (8) = happyGoto action_26
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (12) = happyShift action_9
action_18 (13) = happyShift action_10
action_18 (14) = happyShift action_11
action_18 (15) = happyShift action_12
action_18 (21) = happyShift action_13
action_18 (8) = happyGoto action_25
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (12) = happyShift action_9
action_19 (13) = happyShift action_10
action_19 (14) = happyShift action_11
action_19 (15) = happyShift action_12
action_19 (21) = happyShift action_13
action_19 (7) = happyGoto action_24
action_19 (8) = happyGoto action_7
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (12) = happyShift action_9
action_20 (13) = happyShift action_10
action_20 (14) = happyShift action_11
action_20 (15) = happyShift action_12
action_20 (21) = happyShift action_13
action_20 (7) = happyGoto action_23
action_20 (8) = happyGoto action_7
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (23) = happyShift action_22
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (13) = happyShift action_31
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (19) = happyShift action_17
action_23 (20) = happyShift action_18
action_23 _ = happyReduce_6

action_24 (19) = happyShift action_17
action_24 (20) = happyShift action_18
action_24 _ = happyReduce_5

action_25 _ = happyReduce_9

action_26 _ = happyReduce_8

action_27 (13) = happyShift action_30
action_27 _ = happyFail (happyExpListPerState 27)

action_28 _ = happyReduce_11

action_29 _ = happyReduce_15

action_30 (11) = happyShift action_33
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (16) = happyShift action_32
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (9) = happyShift action_2
action_32 (10) = happyShift action_8
action_32 (12) = happyShift action_9
action_32 (13) = happyShift action_10
action_32 (14) = happyShift action_11
action_32 (15) = happyShift action_12
action_32 (21) = happyShift action_13
action_32 (4) = happyGoto action_35
action_32 (5) = happyGoto action_4
action_32 (6) = happyGoto action_5
action_32 (7) = happyGoto action_6
action_32 (8) = happyGoto action_7
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (9) = happyShift action_2
action_33 (10) = happyShift action_8
action_33 (12) = happyShift action_9
action_33 (13) = happyShift action_10
action_33 (14) = happyShift action_11
action_33 (15) = happyShift action_12
action_33 (21) = happyShift action_13
action_33 (4) = happyGoto action_34
action_33 (5) = happyGoto action_4
action_33 (6) = happyGoto action_5
action_33 (7) = happyGoto action_6
action_33 (8) = happyGoto action_7
action_33 _ = happyFail (happyExpListPerState 33)

action_34 _ = happyReduce_3

action_35 (11) = happyShift action_36
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (9) = happyShift action_2
action_36 (10) = happyShift action_8
action_36 (12) = happyShift action_9
action_36 (13) = happyShift action_10
action_36 (14) = happyShift action_11
action_36 (15) = happyShift action_12
action_36 (21) = happyShift action_13
action_36 (4) = happyGoto action_37
action_36 (5) = happyGoto action_4
action_36 (6) = happyGoto action_5
action_36 (7) = happyGoto action_6
action_36 (8) = happyGoto action_7
action_36 _ = happyFail (happyExpListPerState 36)

action_37 _ = happyReduce_1

happyReduce_1 = happyReduce 8 4 happyReduction_1
happyReduction_1 ((HappyAbsSyn4  happy_var_8) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenLiteral happy_var_4)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenLiteral happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_2 happy_var_4 happy_var_6 happy_var_8
	) `HappyStk` happyRest

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (TypeDef happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happyReduce 6 5 happyReduction_3
happyReduction_3 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenLiteral happy_var_4)) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenLiteral happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (Type happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_4 = happySpecReduce_1  5 happyReduction_4
happyReduction_4 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (LowTerm happy_var_1
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  6 happyReduction_5
happyReduction_5 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Plus happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  6 happyReduction_6
happyReduction_6 (HappyAbsSyn7  happy_var_3)
	_
	(HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn6
		 (Minus happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  6 happyReduction_7
happyReduction_7 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (HighTerm happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  7 happyReduction_8
happyReduction_8 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (Times happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  7 happyReduction_9
happyReduction_9 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (Div happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  7 happyReduction_10
happyReduction_10 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (Factor happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  8 happyReduction_11
happyReduction_11 _
	(HappyTerminal (TokenLiteral happy_var_2))
	_
	 =  HappyAbsSyn8
		 (String happy_var_2
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  8 happyReduction_12
happyReduction_12 (HappyTerminal (TokenLiteral happy_var_1))
	 =  HappyAbsSyn8
		 (Name happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  8 happyReduction_13
happyReduction_13 (HappyTerminal (TokenInt happy_var_1))
	 =  HappyAbsSyn8
		 (Int happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  8 happyReduction_14
happyReduction_14 (HappyTerminal (TokenBool happy_var_1))
	 =  HappyAbsSyn8
		 (Bool happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  8 happyReduction_15
happyReduction_15 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (Brack happy_var_2
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 24 24 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenLet -> cont 9;
	TokenType -> cont 10;
	TokenIn -> cont 11;
	TokenInt happy_dollar_dollar -> cont 12;
	TokenLiteral happy_dollar_dollar -> cont 13;
	TokenBool happy_dollar_dollar -> cont 14;
	TokenQuote -> cont 15;
	TokenEq -> cont 16;
	TokenPlus -> cont 17;
	TokenMinus -> cont 18;
	TokenTimes -> cont 19;
	TokenDiv -> cont 20;
	TokenOB -> cont 21;
	TokenCB -> cont 22;
	TokenColon -> cont 23;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 24 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Prelude.Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Prelude.Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> HappyIdentity a
happyError' = HappyIdentity Prelude.. (\(tokens, _) -> parseError tokens)
parse tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError _ = error "Parse error"

data Expr
      = Let String String Expr Expr
      | TypeDef TypeDef
      deriving Show

data TypeDef
      = Type String String Expr
      | LowTerm LowTerm
      deriving Show

data LowTerm
      = Plus LowTerm HighTerm
      | Minus LowTerm HighTerm
      | HighTerm HighTerm
      deriving Show

data HighTerm
      = Times HighTerm Factor
      | Div HighTerm Factor
      | Factor Factor
      deriving Show

data Factor
      = String String
      | Int Int
      | Name String
      | Bool Bool
      | Brack Expr
      deriving Show

data Token
      = TokenLet
      | TokenType
      | TokenIn
      | TokenInt Int
      | TokenLiteral String
      | TokenBool Bool
      | TokenQuote
      | TokenEq
      | TokenPlus
      | TokenMinus
      | TokenTimes
      | TokenDiv
      | TokenOB
      | TokenCB
      | TokenColon
      deriving Show
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Prelude.Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x Prelude.< y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `Prelude.div` 16)) (bit `Prelude.mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Prelude.Int ->                    -- token number
         Prelude.Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Prelude.- ((1) :: Prelude.Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Prelude.Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n Prelude.- ((1) :: Prelude.Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Prelude.- ((1)::Prelude.Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
