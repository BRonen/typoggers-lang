{-# OPTIONS_GHC -w #-}
module Parser (
      parse,
      Token (..),
      Expr (..),
      TypeDef (..),
      FuncDef (..),
      FuncApp (..),
      LowTerm (..),
      HighTerm (..),
      Factor (..),
      TypeNote (..)
) where
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,173) ([55296,1042,512,0,8192,0,0,0,0,0,0,0,0,0,768,0,768,0,0,8192,0,2048,0,0,0,0,32768,16685,0,4,55296,1042,0,512,11648,321,16384,0,0,0,2048,0,512,1,4171,49152,1042,45056,260,11264,65,0,64,512,0,49152,0,0,24576,4171,0,768,0,0,0,0,19296,16,512,0,0,0,32,0,0,0,2056,0,0,33280,0,128,0,10240,0,128,32768,16685,24576,4171,55296,1042,0,1025,11648,65,2048,0,0,0,0,0,2,0,0,55296,1042,0,3,0,0,19296,16,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Expr","TypeDef","FuncDef","FuncApp","LowTerm","HighTerm","Factor","TypeNote","let","type","in","int","bool","string","literal","fatarrow","arrow","'\"'","'='","'+'","'-'","'*'","'/'","'('","')'","':'","%eof"]
        bit_start = st Prelude.* 30
        bit_end = (st Prelude.+ 1) Prelude.* 30
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..29]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (12) = happyShift action_10
action_0 (13) = happyShift action_11
action_0 (15) = happyShift action_12
action_0 (16) = happyShift action_13
action_0 (18) = happyShift action_14
action_0 (21) = happyShift action_15
action_0 (27) = happyShift action_16
action_0 (4) = happyGoto action_3
action_0 (5) = happyGoto action_4
action_0 (6) = happyGoto action_5
action_0 (7) = happyGoto action_6
action_0 (8) = happyGoto action_7
action_0 (9) = happyGoto action_8
action_0 (10) = happyGoto action_9
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (12) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (18) = happyShift action_27
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (30) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_3

action_5 _ = happyReduce_5

action_6 _ = happyReduce_8

action_7 (23) = happyShift action_25
action_7 (24) = happyShift action_26
action_7 _ = happyReduce_10

action_8 (25) = happyShift action_23
action_8 (26) = happyShift action_24
action_8 _ = happyReduce_13

action_9 _ = happyReduce_16

action_10 (18) = happyShift action_22
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (18) = happyShift action_21
action_11 _ = happyFail (happyExpListPerState 11)

action_12 _ = happyReduce_19

action_13 _ = happyReduce_20

action_14 (12) = happyShift action_10
action_14 (13) = happyShift action_11
action_14 (15) = happyShift action_12
action_14 (16) = happyShift action_13
action_14 (18) = happyShift action_14
action_14 (21) = happyShift action_15
action_14 (27) = happyShift action_16
action_14 (4) = happyGoto action_20
action_14 (5) = happyGoto action_4
action_14 (6) = happyGoto action_5
action_14 (7) = happyGoto action_6
action_14 (8) = happyGoto action_7
action_14 (9) = happyGoto action_8
action_14 (10) = happyGoto action_9
action_14 _ = happyReduce_18

action_15 (17) = happyShift action_19
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (12) = happyShift action_10
action_16 (13) = happyShift action_11
action_16 (15) = happyShift action_12
action_16 (16) = happyShift action_13
action_16 (18) = happyShift action_18
action_16 (21) = happyShift action_15
action_16 (27) = happyShift action_16
action_16 (4) = happyGoto action_17
action_16 (5) = happyGoto action_4
action_16 (6) = happyGoto action_5
action_16 (7) = happyGoto action_6
action_16 (8) = happyGoto action_7
action_16 (9) = happyGoto action_8
action_16 (10) = happyGoto action_9
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (28) = happyShift action_39
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (12) = happyShift action_10
action_18 (13) = happyShift action_11
action_18 (15) = happyShift action_12
action_18 (16) = happyShift action_13
action_18 (18) = happyShift action_14
action_18 (21) = happyShift action_15
action_18 (27) = happyShift action_16
action_18 (29) = happyShift action_38
action_18 (4) = happyGoto action_20
action_18 (5) = happyGoto action_4
action_18 (6) = happyGoto action_5
action_18 (7) = happyGoto action_6
action_18 (8) = happyGoto action_7
action_18 (9) = happyGoto action_8
action_18 (10) = happyGoto action_9
action_18 _ = happyReduce_18

action_19 (21) = happyShift action_37
action_19 _ = happyFail (happyExpListPerState 19)

action_20 _ = happyReduce_9

action_21 (22) = happyShift action_36
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (22) = happyShift action_35
action_22 (29) = happyShift action_28
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (15) = happyShift action_12
action_23 (16) = happyShift action_13
action_23 (18) = happyShift action_30
action_23 (21) = happyShift action_15
action_23 (27) = happyShift action_31
action_23 (10) = happyGoto action_34
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (15) = happyShift action_12
action_24 (16) = happyShift action_13
action_24 (18) = happyShift action_30
action_24 (21) = happyShift action_15
action_24 (27) = happyShift action_31
action_24 (10) = happyGoto action_33
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (15) = happyShift action_12
action_25 (16) = happyShift action_13
action_25 (18) = happyShift action_30
action_25 (21) = happyShift action_15
action_25 (27) = happyShift action_31
action_25 (9) = happyGoto action_32
action_25 (10) = happyGoto action_9
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (15) = happyShift action_12
action_26 (16) = happyShift action_13
action_26 (18) = happyShift action_30
action_26 (21) = happyShift action_15
action_26 (27) = happyShift action_31
action_26 (9) = happyGoto action_29
action_26 (10) = happyGoto action_9
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (29) = happyShift action_28
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (18) = happyShift action_41
action_28 (11) = happyGoto action_44
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (25) = happyShift action_23
action_29 (26) = happyShift action_24
action_29 _ = happyReduce_12

action_30 _ = happyReduce_18

action_31 (12) = happyShift action_10
action_31 (13) = happyShift action_11
action_31 (15) = happyShift action_12
action_31 (16) = happyShift action_13
action_31 (18) = happyShift action_14
action_31 (21) = happyShift action_15
action_31 (27) = happyShift action_16
action_31 (4) = happyGoto action_17
action_31 (5) = happyGoto action_4
action_31 (6) = happyGoto action_5
action_31 (7) = happyGoto action_6
action_31 (8) = happyGoto action_7
action_31 (9) = happyGoto action_8
action_31 (10) = happyGoto action_9
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (25) = happyShift action_23
action_32 (26) = happyShift action_24
action_32 _ = happyReduce_11

action_33 _ = happyReduce_15

action_34 _ = happyReduce_14

action_35 (12) = happyShift action_10
action_35 (13) = happyShift action_11
action_35 (15) = happyShift action_12
action_35 (16) = happyShift action_13
action_35 (18) = happyShift action_14
action_35 (21) = happyShift action_15
action_35 (27) = happyShift action_16
action_35 (4) = happyGoto action_43
action_35 (5) = happyGoto action_4
action_35 (6) = happyGoto action_5
action_35 (7) = happyGoto action_6
action_35 (8) = happyGoto action_7
action_35 (9) = happyGoto action_8
action_35 (10) = happyGoto action_9
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (18) = happyShift action_41
action_36 (11) = happyGoto action_42
action_36 _ = happyFail (happyExpListPerState 36)

action_37 _ = happyReduce_17

action_38 (18) = happyShift action_41
action_38 (11) = happyGoto action_40
action_38 _ = happyFail (happyExpListPerState 38)

action_39 _ = happyReduce_21

action_40 (20) = happyShift action_45
action_40 (28) = happyShift action_49
action_40 _ = happyFail (happyExpListPerState 40)

action_41 _ = happyReduce_22

action_42 (14) = happyShift action_48
action_42 (20) = happyShift action_45
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (14) = happyShift action_47
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (20) = happyShift action_45
action_44 (22) = happyShift action_46
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (18) = happyShift action_55
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (12) = happyShift action_10
action_46 (13) = happyShift action_11
action_46 (15) = happyShift action_12
action_46 (16) = happyShift action_13
action_46 (18) = happyShift action_14
action_46 (21) = happyShift action_15
action_46 (27) = happyShift action_16
action_46 (4) = happyGoto action_54
action_46 (5) = happyGoto action_4
action_46 (6) = happyGoto action_5
action_46 (7) = happyGoto action_6
action_46 (8) = happyGoto action_7
action_46 (9) = happyGoto action_8
action_46 (10) = happyGoto action_9
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (12) = happyShift action_10
action_47 (13) = happyShift action_11
action_47 (15) = happyShift action_12
action_47 (16) = happyShift action_13
action_47 (18) = happyShift action_14
action_47 (21) = happyShift action_15
action_47 (27) = happyShift action_16
action_47 (4) = happyGoto action_53
action_47 (5) = happyGoto action_4
action_47 (6) = happyGoto action_5
action_47 (7) = happyGoto action_6
action_47 (8) = happyGoto action_7
action_47 (9) = happyGoto action_8
action_47 (10) = happyGoto action_9
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (12) = happyShift action_10
action_48 (13) = happyShift action_11
action_48 (15) = happyShift action_12
action_48 (16) = happyShift action_13
action_48 (18) = happyShift action_14
action_48 (21) = happyShift action_15
action_48 (27) = happyShift action_16
action_48 (4) = happyGoto action_52
action_48 (5) = happyGoto action_4
action_48 (6) = happyGoto action_5
action_48 (7) = happyGoto action_6
action_48 (8) = happyGoto action_7
action_48 (9) = happyGoto action_8
action_48 (10) = happyGoto action_9
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (19) = happyShift action_50
action_49 (29) = happyShift action_51
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (12) = happyShift action_10
action_50 (13) = happyShift action_11
action_50 (15) = happyShift action_12
action_50 (16) = happyShift action_13
action_50 (18) = happyShift action_14
action_50 (21) = happyShift action_15
action_50 (27) = happyShift action_16
action_50 (4) = happyGoto action_58
action_50 (5) = happyGoto action_4
action_50 (6) = happyGoto action_5
action_50 (7) = happyGoto action_6
action_50 (8) = happyGoto action_7
action_50 (9) = happyGoto action_8
action_50 (10) = happyGoto action_9
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (18) = happyShift action_41
action_51 (11) = happyGoto action_57
action_51 _ = happyFail (happyExpListPerState 51)

action_52 _ = happyReduce_4

action_53 _ = happyReduce_2

action_54 (14) = happyShift action_56
action_54 _ = happyFail (happyExpListPerState 54)

action_55 _ = happyReduce_23

action_56 (12) = happyShift action_10
action_56 (13) = happyShift action_11
action_56 (15) = happyShift action_12
action_56 (16) = happyShift action_13
action_56 (18) = happyShift action_14
action_56 (21) = happyShift action_15
action_56 (27) = happyShift action_16
action_56 (4) = happyGoto action_60
action_56 (5) = happyGoto action_4
action_56 (6) = happyGoto action_5
action_56 (7) = happyGoto action_6
action_56 (8) = happyGoto action_7
action_56 (9) = happyGoto action_8
action_56 (10) = happyGoto action_9
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (19) = happyShift action_59
action_57 (20) = happyShift action_45
action_57 _ = happyFail (happyExpListPerState 57)

action_58 _ = happyReduce_7

action_59 (12) = happyShift action_10
action_59 (13) = happyShift action_11
action_59 (15) = happyShift action_12
action_59 (16) = happyShift action_13
action_59 (18) = happyShift action_14
action_59 (21) = happyShift action_15
action_59 (27) = happyShift action_16
action_59 (4) = happyGoto action_61
action_59 (5) = happyGoto action_4
action_59 (6) = happyGoto action_5
action_59 (7) = happyGoto action_6
action_59 (8) = happyGoto action_7
action_59 (9) = happyGoto action_8
action_59 (10) = happyGoto action_9
action_59 _ = happyFail (happyExpListPerState 59)

action_60 _ = happyReduce_1

action_61 _ = happyReduce_6

happyReduce_1 = happyReduce 8 4 happyReduction_1
happyReduction_1 ((HappyAbsSyn4  happy_var_8) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenLiteral happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_2 happy_var_4 happy_var_6 happy_var_8
	) `HappyStk` happyRest

happyReduce_2 = happyReduce 6 4 happyReduction_2
happyReduction_2 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenLiteral happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (LetInfer happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (TypeDef happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happyReduce 6 5 happyReduction_4
happyReduction_4 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenLiteral happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TypeAlias happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_5 = happySpecReduce_1  5 happyReduction_5
happyReduction_5 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (FuncDef happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happyReduce 9 6 happyReduction_6
happyReduction_6 ((HappyAbsSyn4  happy_var_9) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenLiteral happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Def happy_var_2 happy_var_4 happy_var_7 happy_var_9
	) `HappyStk` happyRest

happyReduce_7 = happyReduce 7 6 happyReduction_7
happyReduction_7 ((HappyAbsSyn4  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenLiteral happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (DefInfer happy_var_2 happy_var_4 happy_var_7
	) `HappyStk` happyRest

happyReduce_8 = happySpecReduce_1  6 happyReduction_8
happyReduction_8 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (FuncApp happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_2  7 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_2)
	(HappyTerminal (TokenLiteral happy_var_1))
	 =  HappyAbsSyn7
		 (App happy_var_1 happy_var_2
	)
happyReduction_9 _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  7 happyReduction_10
happyReduction_10 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (LowTerm happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  8 happyReduction_11
happyReduction_11 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Plus happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  8 happyReduction_12
happyReduction_12 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (Minus happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  8 happyReduction_13
happyReduction_13 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (HighTerm happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  9 happyReduction_14
happyReduction_14 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Times happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  9 happyReduction_15
happyReduction_15 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Div happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  9 happyReduction_16
happyReduction_16 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 (Factor happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  10 happyReduction_17
happyReduction_17 _
	(HappyTerminal (TokenString happy_var_2))
	_
	 =  HappyAbsSyn10
		 (String happy_var_2
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  10 happyReduction_18
happyReduction_18 (HappyTerminal (TokenLiteral happy_var_1))
	 =  HappyAbsSyn10
		 (Name happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  10 happyReduction_19
happyReduction_19 (HappyTerminal (TokenInt happy_var_1))
	 =  HappyAbsSyn10
		 (Int happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  10 happyReduction_20
happyReduction_20 (HappyTerminal (TokenBool happy_var_1))
	 =  HappyAbsSyn10
		 (Bool happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  10 happyReduction_21
happyReduction_21 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn10
		 (Brack happy_var_2
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  11 happyReduction_22
happyReduction_22 (HappyTerminal (TokenLiteral happy_var_1))
	 =  HappyAbsSyn11
		 (Type happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  11 happyReduction_23
happyReduction_23 (HappyTerminal (TokenLiteral happy_var_3))
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (TypeFunc happy_var_3 happy_var_1
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 30 30 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenLet -> cont 12;
	TokenType -> cont 13;
	TokenIn -> cont 14;
	TokenInt happy_dollar_dollar -> cont 15;
	TokenBool happy_dollar_dollar -> cont 16;
	TokenString happy_dollar_dollar -> cont 17;
	TokenLiteral happy_dollar_dollar -> cont 18;
	TokenFatArrow -> cont 19;
	TokenArrow -> cont 20;
	TokenQuote -> cont 21;
	TokenEq -> cont 22;
	TokenPlus -> cont 23;
	TokenMinus -> cont 24;
	TokenTimes -> cont 25;
	TokenDiv -> cont 26;
	TokenOB -> cont 27;
	TokenCB -> cont 28;
	TokenColon -> cont 29;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 30 tk tks = happyError' (tks, explist)
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
      = Let String TypeNote Expr Expr
      | LetInfer String Expr Expr
      | TypeDef TypeDef
      deriving Show

data TypeDef
      = TypeAlias String TypeNote Expr
      | FuncDef FuncDef
      deriving Show

data FuncDef
      = Def String TypeNote TypeNote Expr
      | DefInfer String TypeNote Expr
      | FuncApp FuncApp
      deriving Show

data FuncApp
      = App String Expr
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

data TypeNote
      = Type String
      | TypeFunc String TypeNote
      deriving Show

data Token
      = TokenLet
      | TokenType
      | TokenIn
      | TokenInt Int
      | TokenBool Bool
      | TokenString String
      | TokenLiteral String
      | TokenQuote
      | TokenFatArrow
      | TokenArrow
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
