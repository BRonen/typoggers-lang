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

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13
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
	| HappyAbsSyn12 t12
	| HappyAbsSyn13 t13

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,216) ([24576,33302,0,4,0,16384,0,0,0,0,0,0,0,0,0,0,0,49152,0,0,96,0,48,0,0,0,2048,0,0,1,0,0,0,0,0,45824,1040,0,8,0,17100,16,0,1024,12288,16651,1,8192,0,0,0,0,256,0,8192,16,5632,130,49152,4162,0,2136,2,2816,65,24576,2081,0,1068,1,0,128,33792,1024,0,24576,0,0,0,22912,520,0,12288,0,0,0,0,0,0,0,0,0,0,5728,130,4096,4098,0,0,0,2112,64,0,0,0,0,2,4096,768,45824,1040,0,0,0,528,16,1024,0,32768,0,0,16384,0,11456,260,38912,8325,0,4275,4,0,256,0,0,0,66,2,2112,64,2048,2049,0,64,4,34200,32,33792,1024,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,0,0,4275,4,8192,0,0,0,32768,2137,2,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Expr","TypeDef","FuncDef","FuncApp","LowTerm","HighTerm","LogicalTerm","Factor","LowTypeNote","HighTypeNote","let","type","typeof","in","int","bool","string","literal","fatarrow","arrow","and","or","'\"'","'='","'+'","'-'","'*'","'/'","'('","')'","':'","'|'","'&'","%eof"]
        bit_start = st Prelude.* 37
        bit_end = (st Prelude.+ 1) Prelude.* 37
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..36]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (14) = happyShift action_11
action_0 (15) = happyShift action_12
action_0 (18) = happyShift action_13
action_0 (19) = happyShift action_14
action_0 (21) = happyShift action_15
action_0 (26) = happyShift action_16
action_0 (32) = happyShift action_17
action_0 (4) = happyGoto action_3
action_0 (5) = happyGoto action_4
action_0 (6) = happyGoto action_5
action_0 (7) = happyGoto action_6
action_0 (8) = happyGoto action_7
action_0 (9) = happyGoto action_8
action_0 (10) = happyGoto action_9
action_0 (11) = happyGoto action_10
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (14) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (21) = happyShift action_30
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (37) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_3

action_5 _ = happyReduce_5

action_6 _ = happyReduce_8

action_7 (28) = happyShift action_28
action_7 (29) = happyShift action_29
action_7 _ = happyReduce_10

action_8 (30) = happyShift action_26
action_8 (31) = happyShift action_27
action_8 _ = happyReduce_13

action_9 (24) = happyShift action_24
action_9 (25) = happyShift action_25
action_9 _ = happyReduce_16

action_10 _ = happyReduce_19

action_11 (21) = happyShift action_23
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (21) = happyShift action_22
action_12 _ = happyFail (happyExpListPerState 12)

action_13 _ = happyReduce_22

action_14 _ = happyReduce_23

action_15 (14) = happyShift action_11
action_15 (15) = happyShift action_12
action_15 (18) = happyShift action_13
action_15 (19) = happyShift action_14
action_15 (21) = happyShift action_15
action_15 (26) = happyShift action_16
action_15 (32) = happyShift action_17
action_15 (4) = happyGoto action_21
action_15 (5) = happyGoto action_4
action_15 (6) = happyGoto action_5
action_15 (7) = happyGoto action_6
action_15 (8) = happyGoto action_7
action_15 (9) = happyGoto action_8
action_15 (10) = happyGoto action_9
action_15 (11) = happyGoto action_10
action_15 _ = happyReduce_21

action_16 (20) = happyShift action_20
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (14) = happyShift action_11
action_17 (15) = happyShift action_12
action_17 (18) = happyShift action_13
action_17 (19) = happyShift action_14
action_17 (21) = happyShift action_19
action_17 (26) = happyShift action_16
action_17 (32) = happyShift action_17
action_17 (4) = happyGoto action_18
action_17 (5) = happyGoto action_4
action_17 (6) = happyGoto action_5
action_17 (7) = happyGoto action_6
action_17 (8) = happyGoto action_7
action_17 (9) = happyGoto action_8
action_17 (10) = happyGoto action_9
action_17 (11) = happyGoto action_10
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (33) = happyShift action_44
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (14) = happyShift action_11
action_19 (15) = happyShift action_12
action_19 (18) = happyShift action_13
action_19 (19) = happyShift action_14
action_19 (21) = happyShift action_15
action_19 (26) = happyShift action_16
action_19 (32) = happyShift action_17
action_19 (34) = happyShift action_43
action_19 (4) = happyGoto action_21
action_19 (5) = happyGoto action_4
action_19 (6) = happyGoto action_5
action_19 (7) = happyGoto action_6
action_19 (8) = happyGoto action_7
action_19 (9) = happyGoto action_8
action_19 (10) = happyGoto action_9
action_19 (11) = happyGoto action_10
action_19 _ = happyReduce_21

action_20 (26) = happyShift action_42
action_20 _ = happyFail (happyExpListPerState 20)

action_21 _ = happyReduce_9

action_22 (27) = happyShift action_41
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (27) = happyShift action_40
action_23 (34) = happyShift action_31
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (18) = happyShift action_13
action_24 (19) = happyShift action_14
action_24 (21) = happyShift action_33
action_24 (26) = happyShift action_16
action_24 (32) = happyShift action_34
action_24 (11) = happyGoto action_39
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (18) = happyShift action_13
action_25 (19) = happyShift action_14
action_25 (21) = happyShift action_33
action_25 (26) = happyShift action_16
action_25 (32) = happyShift action_34
action_25 (11) = happyGoto action_38
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (18) = happyShift action_13
action_26 (19) = happyShift action_14
action_26 (21) = happyShift action_33
action_26 (26) = happyShift action_16
action_26 (32) = happyShift action_34
action_26 (11) = happyGoto action_37
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (18) = happyShift action_13
action_27 (19) = happyShift action_14
action_27 (21) = happyShift action_33
action_27 (26) = happyShift action_16
action_27 (32) = happyShift action_34
action_27 (11) = happyGoto action_36
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (18) = happyShift action_13
action_28 (19) = happyShift action_14
action_28 (21) = happyShift action_33
action_28 (26) = happyShift action_16
action_28 (32) = happyShift action_34
action_28 (9) = happyGoto action_35
action_28 (10) = happyGoto action_9
action_28 (11) = happyGoto action_10
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (18) = happyShift action_13
action_29 (19) = happyShift action_14
action_29 (21) = happyShift action_33
action_29 (26) = happyShift action_16
action_29 (32) = happyShift action_34
action_29 (9) = happyGoto action_32
action_29 (10) = happyGoto action_9
action_29 (11) = happyGoto action_10
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (34) = happyShift action_31
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (16) = happyShift action_47
action_31 (21) = happyShift action_48
action_31 (32) = happyShift action_49
action_31 (12) = happyGoto action_52
action_31 (13) = happyGoto action_46
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (30) = happyShift action_26
action_32 (31) = happyShift action_27
action_32 _ = happyReduce_12

action_33 _ = happyReduce_21

action_34 (14) = happyShift action_11
action_34 (15) = happyShift action_12
action_34 (18) = happyShift action_13
action_34 (19) = happyShift action_14
action_34 (21) = happyShift action_15
action_34 (26) = happyShift action_16
action_34 (32) = happyShift action_17
action_34 (4) = happyGoto action_18
action_34 (5) = happyGoto action_4
action_34 (6) = happyGoto action_5
action_34 (7) = happyGoto action_6
action_34 (8) = happyGoto action_7
action_34 (9) = happyGoto action_8
action_34 (10) = happyGoto action_9
action_34 (11) = happyGoto action_10
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (30) = happyShift action_26
action_35 (31) = happyShift action_27
action_35 _ = happyReduce_11

action_36 _ = happyReduce_15

action_37 _ = happyReduce_14

action_38 _ = happyReduce_18

action_39 _ = happyReduce_17

action_40 (14) = happyShift action_11
action_40 (15) = happyShift action_12
action_40 (18) = happyShift action_13
action_40 (19) = happyShift action_14
action_40 (21) = happyShift action_15
action_40 (26) = happyShift action_16
action_40 (32) = happyShift action_17
action_40 (4) = happyGoto action_51
action_40 (5) = happyGoto action_4
action_40 (6) = happyGoto action_5
action_40 (7) = happyGoto action_6
action_40 (8) = happyGoto action_7
action_40 (9) = happyGoto action_8
action_40 (10) = happyGoto action_9
action_40 (11) = happyGoto action_10
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (16) = happyShift action_47
action_41 (21) = happyShift action_48
action_41 (32) = happyShift action_49
action_41 (12) = happyGoto action_50
action_41 (13) = happyGoto action_46
action_41 _ = happyFail (happyExpListPerState 41)

action_42 _ = happyReduce_20

action_43 (16) = happyShift action_47
action_43 (21) = happyShift action_48
action_43 (32) = happyShift action_49
action_43 (12) = happyGoto action_45
action_43 (13) = happyGoto action_46
action_43 _ = happyFail (happyExpListPerState 43)

action_44 _ = happyReduce_24

action_45 (33) = happyShift action_61
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (23) = happyShift action_58
action_46 (35) = happyShift action_59
action_46 (36) = happyShift action_60
action_46 _ = happyReduce_28

action_47 (14) = happyShift action_11
action_47 (15) = happyShift action_12
action_47 (18) = happyShift action_13
action_47 (19) = happyShift action_14
action_47 (21) = happyShift action_15
action_47 (26) = happyShift action_16
action_47 (32) = happyShift action_17
action_47 (4) = happyGoto action_57
action_47 (5) = happyGoto action_4
action_47 (6) = happyGoto action_5
action_47 (7) = happyGoto action_6
action_47 (8) = happyGoto action_7
action_47 (9) = happyGoto action_8
action_47 (10) = happyGoto action_9
action_47 (11) = happyGoto action_10
action_47 _ = happyFail (happyExpListPerState 47)

action_48 _ = happyReduce_29

action_49 (16) = happyShift action_47
action_49 (21) = happyShift action_48
action_49 (32) = happyShift action_49
action_49 (12) = happyGoto action_56
action_49 (13) = happyGoto action_46
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (17) = happyShift action_55
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (17) = happyShift action_54
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (27) = happyShift action_53
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (14) = happyShift action_11
action_53 (15) = happyShift action_12
action_53 (18) = happyShift action_13
action_53 (19) = happyShift action_14
action_53 (21) = happyShift action_15
action_53 (26) = happyShift action_16
action_53 (32) = happyShift action_17
action_53 (4) = happyGoto action_70
action_53 (5) = happyGoto action_4
action_53 (6) = happyGoto action_5
action_53 (7) = happyGoto action_6
action_53 (8) = happyGoto action_7
action_53 (9) = happyGoto action_8
action_53 (10) = happyGoto action_9
action_53 (11) = happyGoto action_10
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (14) = happyShift action_11
action_54 (15) = happyShift action_12
action_54 (18) = happyShift action_13
action_54 (19) = happyShift action_14
action_54 (21) = happyShift action_15
action_54 (26) = happyShift action_16
action_54 (32) = happyShift action_17
action_54 (4) = happyGoto action_69
action_54 (5) = happyGoto action_4
action_54 (6) = happyGoto action_5
action_54 (7) = happyGoto action_6
action_54 (8) = happyGoto action_7
action_54 (9) = happyGoto action_8
action_54 (10) = happyGoto action_9
action_54 (11) = happyGoto action_10
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (14) = happyShift action_11
action_55 (15) = happyShift action_12
action_55 (18) = happyShift action_13
action_55 (19) = happyShift action_14
action_55 (21) = happyShift action_15
action_55 (26) = happyShift action_16
action_55 (32) = happyShift action_17
action_55 (4) = happyGoto action_68
action_55 (5) = happyGoto action_4
action_55 (6) = happyGoto action_5
action_55 (7) = happyGoto action_6
action_55 (8) = happyGoto action_7
action_55 (9) = happyGoto action_8
action_55 (10) = happyGoto action_9
action_55 (11) = happyGoto action_10
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (33) = happyShift action_67
action_56 _ = happyFail (happyExpListPerState 56)

action_57 _ = happyReduce_30

action_58 (16) = happyShift action_47
action_58 (21) = happyShift action_48
action_58 (32) = happyShift action_49
action_58 (12) = happyGoto action_66
action_58 (13) = happyGoto action_46
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (16) = happyShift action_47
action_59 (21) = happyShift action_48
action_59 (32) = happyShift action_49
action_59 (12) = happyGoto action_65
action_59 (13) = happyGoto action_46
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (16) = happyShift action_47
action_60 (21) = happyShift action_48
action_60 (32) = happyShift action_49
action_60 (12) = happyGoto action_64
action_60 (13) = happyGoto action_46
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (22) = happyShift action_62
action_61 (34) = happyShift action_63
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (14) = happyShift action_11
action_62 (15) = happyShift action_12
action_62 (18) = happyShift action_13
action_62 (19) = happyShift action_14
action_62 (21) = happyShift action_15
action_62 (26) = happyShift action_16
action_62 (32) = happyShift action_17
action_62 (4) = happyGoto action_73
action_62 (5) = happyGoto action_4
action_62 (6) = happyGoto action_5
action_62 (7) = happyGoto action_6
action_62 (8) = happyGoto action_7
action_62 (9) = happyGoto action_8
action_62 (10) = happyGoto action_9
action_62 (11) = happyGoto action_10
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (16) = happyShift action_47
action_63 (21) = happyShift action_48
action_63 (32) = happyShift action_49
action_63 (12) = happyGoto action_72
action_63 (13) = happyGoto action_46
action_63 _ = happyFail (happyExpListPerState 63)

action_64 _ = happyReduce_27

action_65 _ = happyReduce_26

action_66 _ = happyReduce_25

action_67 _ = happyReduce_31

action_68 _ = happyReduce_4

action_69 _ = happyReduce_2

action_70 (17) = happyShift action_71
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (14) = happyShift action_11
action_71 (15) = happyShift action_12
action_71 (18) = happyShift action_13
action_71 (19) = happyShift action_14
action_71 (21) = happyShift action_15
action_71 (26) = happyShift action_16
action_71 (32) = happyShift action_17
action_71 (4) = happyGoto action_75
action_71 (5) = happyGoto action_4
action_71 (6) = happyGoto action_5
action_71 (7) = happyGoto action_6
action_71 (8) = happyGoto action_7
action_71 (9) = happyGoto action_8
action_71 (10) = happyGoto action_9
action_71 (11) = happyGoto action_10
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (22) = happyShift action_74
action_72 _ = happyFail (happyExpListPerState 72)

action_73 _ = happyReduce_7

action_74 (14) = happyShift action_11
action_74 (15) = happyShift action_12
action_74 (18) = happyShift action_13
action_74 (19) = happyShift action_14
action_74 (21) = happyShift action_15
action_74 (26) = happyShift action_16
action_74 (32) = happyShift action_17
action_74 (4) = happyGoto action_76
action_74 (5) = happyGoto action_4
action_74 (6) = happyGoto action_5
action_74 (7) = happyGoto action_6
action_74 (8) = happyGoto action_7
action_74 (9) = happyGoto action_8
action_74 (10) = happyGoto action_9
action_74 (11) = happyGoto action_10
action_74 _ = happyFail (happyExpListPerState 74)

action_75 _ = happyReduce_1

action_76 _ = happyReduce_6

happyReduce_1 = happyReduce 8 4 happyReduction_1
happyReduction_1 ((HappyAbsSyn4  happy_var_8) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_4) `HappyStk`
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
	(HappyAbsSyn12  happy_var_4) `HappyStk`
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
	(HappyAbsSyn12  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_4) `HappyStk`
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
	(HappyAbsSyn12  happy_var_4) `HappyStk`
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
happyReduction_14 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Times happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  9 happyReduction_15
happyReduction_15 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (Div happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  9 happyReduction_16
happyReduction_16 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  10 happyReduction_17
happyReduction_17 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (And happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  10 happyReduction_18
happyReduction_18 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (Or happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  10 happyReduction_19
happyReduction_19 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn10
		 (Factor happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  11 happyReduction_20
happyReduction_20 _
	(HappyTerminal (TokenString happy_var_2))
	_
	 =  HappyAbsSyn11
		 (String happy_var_2
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  11 happyReduction_21
happyReduction_21 (HappyTerminal (TokenLiteral happy_var_1))
	 =  HappyAbsSyn11
		 (Name happy_var_1
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  11 happyReduction_22
happyReduction_22 (HappyTerminal (TokenInt happy_var_1))
	 =  HappyAbsSyn11
		 (Int happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  11 happyReduction_23
happyReduction_23 (HappyTerminal (TokenBool happy_var_1))
	 =  HappyAbsSyn11
		 (Bool happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  11 happyReduction_24
happyReduction_24 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (Brack happy_var_2
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  12 happyReduction_25
happyReduction_25 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (TypeFunc happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  12 happyReduction_26
happyReduction_26 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (TypeUnion happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  12 happyReduction_27
happyReduction_27 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (TypeIntersection happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_1  12 happyReduction_28
happyReduction_28 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_28 _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_1  13 happyReduction_29
happyReduction_29 (HappyTerminal (TokenLiteral happy_var_1))
	 =  HappyAbsSyn13
		 (Type happy_var_1
	)
happyReduction_29 _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_2  13 happyReduction_30
happyReduction_30 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn13
		 (Typeof happy_var_2
	)
happyReduction_30 _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  13 happyReduction_31
happyReduction_31 _
	(HappyAbsSyn12  happy_var_2)
	_
	 =  HappyAbsSyn13
		 (happy_var_2
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 37 37 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenLet -> cont 14;
	TokenType -> cont 15;
	TokenTypeof -> cont 16;
	TokenIn -> cont 17;
	TokenInt happy_dollar_dollar -> cont 18;
	TokenBool happy_dollar_dollar -> cont 19;
	TokenString happy_dollar_dollar -> cont 20;
	TokenLiteral happy_dollar_dollar -> cont 21;
	TokenFatArrow -> cont 22;
	TokenArrow -> cont 23;
	TokenAnd -> cont 24;
	TokenOr -> cont 25;
	TokenQuote -> cont 26;
	TokenEq -> cont 27;
	TokenPlus -> cont 28;
	TokenMinus -> cont 29;
	TokenTimes -> cont 30;
	TokenDiv -> cont 31;
	TokenOB -> cont 32;
	TokenCB -> cont 33;
	TokenColon -> cont 34;
	TokenPipe -> cont 35;
	TokenAmpersand -> cont 36;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 37 tk tks = happyError' (tks, explist)
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
parseError tokens = error $ "Parse error: " ++ show tokens

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
      | And HighTerm Factor
      | Or HighTerm Factor
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
      | Typeof Expr
      | TypeUnion TypeNote TypeNote
      | TypeIntersection TypeNote TypeNote
      | TypeFunc TypeNote TypeNote
      deriving Show

data Token
      = TokenLet
      | TokenType
      | TokenTypeof
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
      | TokenOr
      | TokenAnd
      | TokenPipe
      | TokenAmpersand
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
