{-# OPTIONS_GHC -w #-}
module Parser (parse, Token (..)) where
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
happyExpList = Happy_Data_Array.listArray (0,70) ([15104,32776,0,1024,0,0,0,0,12,6144,0,0,16,0,0,0,512,45056,131,32768,32768,0,128,14336,8,1052,3584,2,263,0,32770,0,6144,0,12,0,0,0,4,0,0,0,32,0,1,4214,15104,8,0,256,24576,263,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Expr","TypeDef","LowTerm","HighTerm","Factor","let","type","in","int","literal","'\"'","'='","'+'","'-'","'*'","'/'","'('","')'","':'","%eof"]
        bit_start = st Prelude.* 23
        bit_end = (st Prelude.+ 1) Prelude.* 23
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..22]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (9) = happyShift action_2
action_0 (10) = happyShift action_8
action_0 (12) = happyShift action_9
action_0 (13) = happyShift action_10
action_0 (14) = happyShift action_11
action_0 (20) = happyShift action_12
action_0 (4) = happyGoto action_3
action_0 (5) = happyGoto action_4
action_0 (6) = happyGoto action_5
action_0 (7) = happyGoto action_6
action_0 (8) = happyGoto action_7
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (9) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (13) = happyShift action_20
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (23) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_2

action_5 (16) = happyShift action_18
action_5 (17) = happyShift action_19
action_5 _ = happyReduce_4

action_6 (18) = happyShift action_16
action_6 (19) = happyShift action_17
action_6 _ = happyReduce_7

action_7 _ = happyReduce_10

action_8 (13) = happyShift action_15
action_8 _ = happyFail (happyExpListPerState 8)

action_9 _ = happyReduce_13

action_10 _ = happyReduce_12

action_11 (13) = happyShift action_14
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (9) = happyShift action_2
action_12 (10) = happyShift action_8
action_12 (12) = happyShift action_9
action_12 (13) = happyShift action_10
action_12 (14) = happyShift action_11
action_12 (20) = happyShift action_12
action_12 (4) = happyGoto action_13
action_12 (5) = happyGoto action_4
action_12 (6) = happyGoto action_5
action_12 (7) = happyGoto action_6
action_12 (8) = happyGoto action_7
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (21) = happyShift action_28
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (14) = happyShift action_27
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (15) = happyShift action_26
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (12) = happyShift action_9
action_16 (13) = happyShift action_10
action_16 (14) = happyShift action_11
action_16 (20) = happyShift action_12
action_16 (8) = happyGoto action_25
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (12) = happyShift action_9
action_17 (13) = happyShift action_10
action_17 (14) = happyShift action_11
action_17 (20) = happyShift action_12
action_17 (8) = happyGoto action_24
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (12) = happyShift action_9
action_18 (13) = happyShift action_10
action_18 (14) = happyShift action_11
action_18 (20) = happyShift action_12
action_18 (7) = happyGoto action_23
action_18 (8) = happyGoto action_7
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (12) = happyShift action_9
action_19 (13) = happyShift action_10
action_19 (14) = happyShift action_11
action_19 (20) = happyShift action_12
action_19 (7) = happyGoto action_22
action_19 (8) = happyGoto action_7
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (22) = happyShift action_21
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (13) = happyShift action_30
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (18) = happyShift action_16
action_22 (19) = happyShift action_17
action_22 _ = happyReduce_6

action_23 (18) = happyShift action_16
action_23 (19) = happyShift action_17
action_23 _ = happyReduce_5

action_24 _ = happyReduce_9

action_25 _ = happyReduce_8

action_26 (13) = happyShift action_29
action_26 _ = happyFail (happyExpListPerState 26)

action_27 _ = happyReduce_11

action_28 _ = happyReduce_14

action_29 (11) = happyShift action_32
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (15) = happyShift action_31
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (9) = happyShift action_2
action_31 (10) = happyShift action_8
action_31 (12) = happyShift action_9
action_31 (13) = happyShift action_10
action_31 (14) = happyShift action_11
action_31 (20) = happyShift action_12
action_31 (4) = happyGoto action_34
action_31 (5) = happyGoto action_4
action_31 (6) = happyGoto action_5
action_31 (7) = happyGoto action_6
action_31 (8) = happyGoto action_7
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (9) = happyShift action_2
action_32 (10) = happyShift action_8
action_32 (12) = happyShift action_9
action_32 (13) = happyShift action_10
action_32 (14) = happyShift action_11
action_32 (20) = happyShift action_12
action_32 (4) = happyGoto action_33
action_32 (5) = happyGoto action_4
action_32 (6) = happyGoto action_5
action_32 (7) = happyGoto action_6
action_32 (8) = happyGoto action_7
action_32 _ = happyFail (happyExpListPerState 32)

action_33 _ = happyReduce_3

action_34 (11) = happyShift action_35
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (9) = happyShift action_2
action_35 (10) = happyShift action_8
action_35 (12) = happyShift action_9
action_35 (13) = happyShift action_10
action_35 (14) = happyShift action_11
action_35 (20) = happyShift action_12
action_35 (4) = happyGoto action_36
action_35 (5) = happyGoto action_4
action_35 (6) = happyGoto action_5
action_35 (7) = happyGoto action_6
action_35 (8) = happyGoto action_7
action_35 _ = happyFail (happyExpListPerState 35)

action_36 _ = happyReduce_1

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

happyReduce_14 = happySpecReduce_3  8 happyReduction_14
happyReduction_14 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (Brack happy_var_2
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 23 23 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenLet -> cont 9;
	TokenType -> cont 10;
	TokenIn -> cont 11;
	TokenInt happy_dollar_dollar -> cont 12;
	TokenLiteral happy_dollar_dollar -> cont 13;
	TokenQuote -> cont 14;
	TokenEq -> cont 15;
	TokenPlus -> cont 16;
	TokenMinus -> cont 17;
	TokenTimes -> cont 18;
	TokenDiv -> cont 19;
	TokenOB -> cont 20;
	TokenCB -> cont 21;
	TokenColon -> cont 22;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 23 tk tks = happyError' (tks, explist)
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
      | Brack Expr
      deriving Show

data Token
      = TokenLet
      | TokenType
      | TokenIn
      | TokenInt Int
      | TokenLiteral String
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
