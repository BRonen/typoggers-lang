{-# OPTIONS_GHC -w #-}
module Parser (
      parse,
      Token (..),
      SExpr (..),
      ) where
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14
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
	| HappyAbsSyn14 t14

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,247) ([49152,1068,1,16,0,0,2,0,0,0,0,0,0,0,0,0,0,0,192,0,49152,0,32768,0,0,16,0,0,0,8192,0,0,8,0,0,0,0,0,49152,1068,1,1024,0,52224,4162,0,0,8,11456,1284,0,256,0,0,0,0,32,0,2048,4,2816,65,49152,4162,0,4272,4,11264,260,0,16651,0,17088,16,0,4096,0,33,1,0,48,0,0,0,4275,4,0,192,0,128,0,8192,0,0,4,0,0,0,2864,65,4096,4098,0,0,0,8448,256,12288,16651,0,0,0,0,2048,0,128,24,2864,65,0,0,0,132,4,512,0,32768,0,0,0,32,0,32,49152,1068,1,0,0,52224,4162,0,4275,4,0,512,0,0,0,528,16,33792,1024,0,33,1,4096,256,52224,4162,0,132,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8192,0,0,4275,4,16384,0,0,0,0,17100,16,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Expr","TypeDef","FuncDef","FuncApp","LowTerm","HighTerm","LowLogicOp","HighLogicOp","Factor","LowTypeNote","HighTypeNote","let","type","typeof","in","int","bool","string","literal","fatarrow","arrow","and","or","'\"'","'='","'+'","'-'","'*'","'/'","'('","')'","':'","'|'","'&'","%eof"]
        bit_start = st Prelude.* 38
        bit_end = (st Prelude.+ 1) Prelude.* 38
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..37]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (15) = happyShift action_12
action_0 (16) = happyShift action_13
action_0 (19) = happyShift action_14
action_0 (20) = happyShift action_15
action_0 (22) = happyShift action_16
action_0 (27) = happyShift action_17
action_0 (33) = happyShift action_18
action_0 (4) = happyGoto action_3
action_0 (5) = happyGoto action_4
action_0 (6) = happyGoto action_5
action_0 (7) = happyGoto action_6
action_0 (8) = happyGoto action_7
action_0 (9) = happyGoto action_8
action_0 (10) = happyGoto action_9
action_0 (11) = happyGoto action_10
action_0 (12) = happyGoto action_11
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (15) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (22) = happyShift action_31
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (38) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_3

action_5 _ = happyReduce_5

action_6 _ = happyReduce_8

action_7 (29) = happyShift action_29
action_7 (30) = happyShift action_30
action_7 _ = happyReduce_11

action_8 (31) = happyShift action_27
action_8 (32) = happyShift action_28
action_8 _ = happyReduce_14

action_9 (26) = happyShift action_26
action_9 _ = happyReduce_17

action_10 (25) = happyShift action_25
action_10 _ = happyReduce_19

action_11 _ = happyReduce_21

action_12 (22) = happyShift action_24
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (22) = happyShift action_23
action_13 _ = happyFail (happyExpListPerState 13)

action_14 _ = happyReduce_24

action_15 _ = happyReduce_25

action_16 (15) = happyShift action_12
action_16 (16) = happyShift action_13
action_16 (19) = happyShift action_14
action_16 (20) = happyShift action_15
action_16 (22) = happyShift action_16
action_16 (27) = happyShift action_17
action_16 (33) = happyShift action_18
action_16 (4) = happyGoto action_22
action_16 (5) = happyGoto action_4
action_16 (6) = happyGoto action_5
action_16 (7) = happyGoto action_6
action_16 (8) = happyGoto action_7
action_16 (9) = happyGoto action_8
action_16 (10) = happyGoto action_9
action_16 (11) = happyGoto action_10
action_16 (12) = happyGoto action_11
action_16 _ = happyReduce_23

action_17 (21) = happyShift action_21
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (15) = happyShift action_12
action_18 (16) = happyShift action_13
action_18 (19) = happyShift action_14
action_18 (20) = happyShift action_15
action_18 (22) = happyShift action_20
action_18 (27) = happyShift action_17
action_18 (33) = happyShift action_18
action_18 (4) = happyGoto action_19
action_18 (5) = happyGoto action_4
action_18 (6) = happyGoto action_5
action_18 (7) = happyGoto action_6
action_18 (8) = happyGoto action_7
action_18 (9) = happyGoto action_8
action_18 (10) = happyGoto action_9
action_18 (11) = happyGoto action_10
action_18 (12) = happyGoto action_11
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (34) = happyShift action_45
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (15) = happyShift action_12
action_20 (16) = happyShift action_13
action_20 (19) = happyShift action_14
action_20 (20) = happyShift action_15
action_20 (22) = happyShift action_16
action_20 (27) = happyShift action_17
action_20 (33) = happyShift action_18
action_20 (35) = happyShift action_44
action_20 (4) = happyGoto action_22
action_20 (5) = happyGoto action_4
action_20 (6) = happyGoto action_5
action_20 (7) = happyGoto action_6
action_20 (8) = happyGoto action_7
action_20 (9) = happyGoto action_8
action_20 (10) = happyGoto action_9
action_20 (11) = happyGoto action_10
action_20 (12) = happyGoto action_11
action_20 _ = happyReduce_23

action_21 (27) = happyShift action_43
action_21 _ = happyFail (happyExpListPerState 21)

action_22 _ = happyReduce_9

action_23 (28) = happyShift action_42
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (28) = happyShift action_41
action_24 (35) = happyShift action_32
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (19) = happyShift action_14
action_25 (20) = happyShift action_15
action_25 (22) = happyShift action_34
action_25 (27) = happyShift action_17
action_25 (33) = happyShift action_35
action_25 (12) = happyGoto action_40
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (19) = happyShift action_14
action_26 (20) = happyShift action_15
action_26 (22) = happyShift action_34
action_26 (27) = happyShift action_17
action_26 (33) = happyShift action_35
action_26 (11) = happyGoto action_39
action_26 (12) = happyGoto action_11
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (19) = happyShift action_14
action_27 (20) = happyShift action_15
action_27 (22) = happyShift action_34
action_27 (27) = happyShift action_17
action_27 (33) = happyShift action_35
action_27 (10) = happyGoto action_38
action_27 (11) = happyGoto action_10
action_27 (12) = happyGoto action_11
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (19) = happyShift action_14
action_28 (20) = happyShift action_15
action_28 (22) = happyShift action_34
action_28 (27) = happyShift action_17
action_28 (33) = happyShift action_35
action_28 (10) = happyGoto action_37
action_28 (11) = happyGoto action_10
action_28 (12) = happyGoto action_11
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (19) = happyShift action_14
action_29 (20) = happyShift action_15
action_29 (22) = happyShift action_34
action_29 (27) = happyShift action_17
action_29 (33) = happyShift action_35
action_29 (9) = happyGoto action_36
action_29 (10) = happyGoto action_9
action_29 (11) = happyGoto action_10
action_29 (12) = happyGoto action_11
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (19) = happyShift action_14
action_30 (20) = happyShift action_15
action_30 (22) = happyShift action_34
action_30 (27) = happyShift action_17
action_30 (33) = happyShift action_35
action_30 (9) = happyGoto action_33
action_30 (10) = happyGoto action_9
action_30 (11) = happyGoto action_10
action_30 (12) = happyGoto action_11
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (35) = happyShift action_32
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (17) = happyShift action_49
action_32 (22) = happyShift action_50
action_32 (33) = happyShift action_51
action_32 (13) = happyGoto action_55
action_32 (14) = happyGoto action_48
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (31) = happyShift action_27
action_33 (32) = happyShift action_28
action_33 _ = happyReduce_13

action_34 _ = happyReduce_23

action_35 (15) = happyShift action_12
action_35 (16) = happyShift action_13
action_35 (19) = happyShift action_14
action_35 (20) = happyShift action_15
action_35 (22) = happyShift action_16
action_35 (27) = happyShift action_17
action_35 (33) = happyShift action_18
action_35 (4) = happyGoto action_54
action_35 (5) = happyGoto action_4
action_35 (6) = happyGoto action_5
action_35 (7) = happyGoto action_6
action_35 (8) = happyGoto action_7
action_35 (9) = happyGoto action_8
action_35 (10) = happyGoto action_9
action_35 (11) = happyGoto action_10
action_35 (12) = happyGoto action_11
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (31) = happyShift action_27
action_36 (32) = happyShift action_28
action_36 _ = happyReduce_12

action_37 (26) = happyShift action_26
action_37 _ = happyReduce_16

action_38 (26) = happyShift action_26
action_38 _ = happyReduce_15

action_39 (25) = happyShift action_25
action_39 _ = happyReduce_18

action_40 _ = happyReduce_20

action_41 (15) = happyShift action_12
action_41 (16) = happyShift action_13
action_41 (19) = happyShift action_14
action_41 (20) = happyShift action_15
action_41 (22) = happyShift action_16
action_41 (27) = happyShift action_17
action_41 (33) = happyShift action_18
action_41 (4) = happyGoto action_53
action_41 (5) = happyGoto action_4
action_41 (6) = happyGoto action_5
action_41 (7) = happyGoto action_6
action_41 (8) = happyGoto action_7
action_41 (9) = happyGoto action_8
action_41 (10) = happyGoto action_9
action_41 (11) = happyGoto action_10
action_41 (12) = happyGoto action_11
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (17) = happyShift action_49
action_42 (22) = happyShift action_50
action_42 (33) = happyShift action_51
action_42 (13) = happyGoto action_52
action_42 (14) = happyGoto action_48
action_42 _ = happyFail (happyExpListPerState 42)

action_43 _ = happyReduce_22

action_44 (17) = happyShift action_49
action_44 (22) = happyShift action_50
action_44 (33) = happyShift action_51
action_44 (13) = happyGoto action_47
action_44 (14) = happyGoto action_48
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (15) = happyShift action_12
action_45 (16) = happyShift action_13
action_45 (19) = happyShift action_14
action_45 (20) = happyShift action_15
action_45 (22) = happyShift action_16
action_45 (27) = happyShift action_17
action_45 (33) = happyShift action_18
action_45 (4) = happyGoto action_46
action_45 (5) = happyGoto action_4
action_45 (6) = happyGoto action_5
action_45 (7) = happyGoto action_6
action_45 (8) = happyGoto action_7
action_45 (9) = happyGoto action_8
action_45 (10) = happyGoto action_9
action_45 (11) = happyGoto action_10
action_45 (12) = happyGoto action_11
action_45 _ = happyReduce_26

action_46 _ = happyReduce_10

action_47 (34) = happyShift action_65
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (24) = happyShift action_62
action_48 (36) = happyShift action_63
action_48 (37) = happyShift action_64
action_48 _ = happyReduce_30

action_49 (15) = happyShift action_12
action_49 (16) = happyShift action_13
action_49 (19) = happyShift action_14
action_49 (20) = happyShift action_15
action_49 (22) = happyShift action_16
action_49 (27) = happyShift action_17
action_49 (33) = happyShift action_18
action_49 (4) = happyGoto action_61
action_49 (5) = happyGoto action_4
action_49 (6) = happyGoto action_5
action_49 (7) = happyGoto action_6
action_49 (8) = happyGoto action_7
action_49 (9) = happyGoto action_8
action_49 (10) = happyGoto action_9
action_49 (11) = happyGoto action_10
action_49 (12) = happyGoto action_11
action_49 _ = happyFail (happyExpListPerState 49)

action_50 _ = happyReduce_31

action_51 (17) = happyShift action_49
action_51 (22) = happyShift action_50
action_51 (33) = happyShift action_51
action_51 (13) = happyGoto action_60
action_51 (14) = happyGoto action_48
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (18) = happyShift action_59
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (18) = happyShift action_58
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (34) = happyShift action_57
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (28) = happyShift action_56
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (15) = happyShift action_12
action_56 (16) = happyShift action_13
action_56 (19) = happyShift action_14
action_56 (20) = happyShift action_15
action_56 (22) = happyShift action_16
action_56 (27) = happyShift action_17
action_56 (33) = happyShift action_18
action_56 (4) = happyGoto action_74
action_56 (5) = happyGoto action_4
action_56 (6) = happyGoto action_5
action_56 (7) = happyGoto action_6
action_56 (8) = happyGoto action_7
action_56 (9) = happyGoto action_8
action_56 (10) = happyGoto action_9
action_56 (11) = happyGoto action_10
action_56 (12) = happyGoto action_11
action_56 _ = happyFail (happyExpListPerState 56)

action_57 _ = happyReduce_26

action_58 (15) = happyShift action_12
action_58 (16) = happyShift action_13
action_58 (19) = happyShift action_14
action_58 (20) = happyShift action_15
action_58 (22) = happyShift action_16
action_58 (27) = happyShift action_17
action_58 (33) = happyShift action_18
action_58 (4) = happyGoto action_73
action_58 (5) = happyGoto action_4
action_58 (6) = happyGoto action_5
action_58 (7) = happyGoto action_6
action_58 (8) = happyGoto action_7
action_58 (9) = happyGoto action_8
action_58 (10) = happyGoto action_9
action_58 (11) = happyGoto action_10
action_58 (12) = happyGoto action_11
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (15) = happyShift action_12
action_59 (16) = happyShift action_13
action_59 (19) = happyShift action_14
action_59 (20) = happyShift action_15
action_59 (22) = happyShift action_16
action_59 (27) = happyShift action_17
action_59 (33) = happyShift action_18
action_59 (4) = happyGoto action_72
action_59 (5) = happyGoto action_4
action_59 (6) = happyGoto action_5
action_59 (7) = happyGoto action_6
action_59 (8) = happyGoto action_7
action_59 (9) = happyGoto action_8
action_59 (10) = happyGoto action_9
action_59 (11) = happyGoto action_10
action_59 (12) = happyGoto action_11
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (34) = happyShift action_71
action_60 _ = happyFail (happyExpListPerState 60)

action_61 _ = happyReduce_32

action_62 (17) = happyShift action_49
action_62 (22) = happyShift action_50
action_62 (33) = happyShift action_51
action_62 (13) = happyGoto action_70
action_62 (14) = happyGoto action_48
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (17) = happyShift action_49
action_63 (22) = happyShift action_50
action_63 (33) = happyShift action_51
action_63 (13) = happyGoto action_69
action_63 (14) = happyGoto action_48
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (17) = happyShift action_49
action_64 (22) = happyShift action_50
action_64 (33) = happyShift action_51
action_64 (13) = happyGoto action_68
action_64 (14) = happyGoto action_48
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (23) = happyShift action_66
action_65 (35) = happyShift action_67
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (15) = happyShift action_12
action_66 (16) = happyShift action_13
action_66 (19) = happyShift action_14
action_66 (20) = happyShift action_15
action_66 (22) = happyShift action_16
action_66 (27) = happyShift action_17
action_66 (33) = happyShift action_18
action_66 (4) = happyGoto action_77
action_66 (5) = happyGoto action_4
action_66 (6) = happyGoto action_5
action_66 (7) = happyGoto action_6
action_66 (8) = happyGoto action_7
action_66 (9) = happyGoto action_8
action_66 (10) = happyGoto action_9
action_66 (11) = happyGoto action_10
action_66 (12) = happyGoto action_11
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (17) = happyShift action_49
action_67 (22) = happyShift action_50
action_67 (33) = happyShift action_51
action_67 (13) = happyGoto action_76
action_67 (14) = happyGoto action_48
action_67 _ = happyFail (happyExpListPerState 67)

action_68 _ = happyReduce_29

action_69 _ = happyReduce_28

action_70 _ = happyReduce_27

action_71 _ = happyReduce_33

action_72 _ = happyReduce_4

action_73 _ = happyReduce_2

action_74 (18) = happyShift action_75
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (15) = happyShift action_12
action_75 (16) = happyShift action_13
action_75 (19) = happyShift action_14
action_75 (20) = happyShift action_15
action_75 (22) = happyShift action_16
action_75 (27) = happyShift action_17
action_75 (33) = happyShift action_18
action_75 (4) = happyGoto action_79
action_75 (5) = happyGoto action_4
action_75 (6) = happyGoto action_5
action_75 (7) = happyGoto action_6
action_75 (8) = happyGoto action_7
action_75 (9) = happyGoto action_8
action_75 (10) = happyGoto action_9
action_75 (11) = happyGoto action_10
action_75 (12) = happyGoto action_11
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (23) = happyShift action_78
action_76 _ = happyFail (happyExpListPerState 76)

action_77 _ = happyReduce_7

action_78 (15) = happyShift action_12
action_78 (16) = happyShift action_13
action_78 (19) = happyShift action_14
action_78 (20) = happyShift action_15
action_78 (22) = happyShift action_16
action_78 (27) = happyShift action_17
action_78 (33) = happyShift action_18
action_78 (4) = happyGoto action_80
action_78 (5) = happyGoto action_4
action_78 (6) = happyGoto action_5
action_78 (7) = happyGoto action_6
action_78 (8) = happyGoto action_7
action_78 (9) = happyGoto action_8
action_78 (10) = happyGoto action_9
action_78 (11) = happyGoto action_10
action_78 (12) = happyGoto action_11
action_78 _ = happyFail (happyExpListPerState 78)

action_79 _ = happyReduce_1

action_80 _ = happyReduce_6

happyReduce_1 = happyReduce 8 4 happyReduction_1
happyReduction_1 ((HappyAbsSyn4  happy_var_8) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn13  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenLiteral happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (SLet happy_var_2 happy_var_4 happy_var_6 happy_var_8
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
		 (SLetInfer happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happyReduce 6 5 happyReduction_4
happyReduction_4 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn13  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenLiteral happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (STypeAlias happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_5 = happySpecReduce_1  5 happyReduction_5
happyReduction_5 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happyReduce 9 6 happyReduction_6
happyReduction_6 ((HappyAbsSyn4  happy_var_9) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn13  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn13  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenLiteral happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (SDef happy_var_2 happy_var_4 happy_var_7 happy_var_9
	) `HappyStk` happyRest

happyReduce_7 = happyReduce 7 6 happyReduction_7
happyReduction_7 ((HappyAbsSyn4  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn13  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenLiteral happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (SDefInfer happy_var_2 happy_var_4 happy_var_7
	) `HappyStk` happyRest

happyReduce_8 = happySpecReduce_1  6 happyReduction_8
happyReduction_8 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_2  7 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_2)
	(HappyTerminal (TokenLiteral happy_var_1))
	 =  HappyAbsSyn7
		 (SApp (SName happy_var_1) happy_var_2
	)
happyReduction_9 _ _  = notHappyAtAll 

happyReduce_10 = happyReduce 4 7 happyReduction_10
happyReduction_10 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (SApp happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_11 = happySpecReduce_1  7 happyReduction_11
happyReduction_11 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  8 happyReduction_12
happyReduction_12 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (SPlus happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  8 happyReduction_13
happyReduction_13 (HappyAbsSyn9  happy_var_3)
	_
	(HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn8
		 (SMinus happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  8 happyReduction_14
happyReduction_14 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  9 happyReduction_15
happyReduction_15 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (STimes happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  9 happyReduction_16
happyReduction_16 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (SDiv happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  9 happyReduction_17
happyReduction_17 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  10 happyReduction_18
happyReduction_18 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (SOr happy_var_1 happy_var_3
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  10 happyReduction_19
happyReduction_19 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  11 happyReduction_20
happyReduction_20 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (SAnd happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  11 happyReduction_21
happyReduction_21 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  12 happyReduction_22
happyReduction_22 _
	(HappyTerminal (TokenString happy_var_2))
	_
	 =  HappyAbsSyn12
		 (SString happy_var_2
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  12 happyReduction_23
happyReduction_23 (HappyTerminal (TokenLiteral happy_var_1))
	 =  HappyAbsSyn12
		 (SName happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  12 happyReduction_24
happyReduction_24 (HappyTerminal (TokenInt happy_var_1))
	 =  HappyAbsSyn12
		 (SInt happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  12 happyReduction_25
happyReduction_25 (HappyTerminal (TokenBool happy_var_1))
	 =  HappyAbsSyn12
		 (SBool happy_var_1
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  12 happyReduction_26
happyReduction_26 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn12
		 (SBrack happy_var_2
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  13 happyReduction_27
happyReduction_27 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn13
		 (STypeFunc happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  13 happyReduction_28
happyReduction_28 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn13
		 (STypeUnion happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  13 happyReduction_29
happyReduction_29 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn13
		 (STypeIntersection happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  13 happyReduction_30
happyReduction_30 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_1
	)
happyReduction_30 _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_1  14 happyReduction_31
happyReduction_31 (HappyTerminal (TokenLiteral happy_var_1))
	 =  HappyAbsSyn14
		 (SType happy_var_1
	)
happyReduction_31 _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_2  14 happyReduction_32
happyReduction_32 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn14
		 (STypeof happy_var_2
	)
happyReduction_32 _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  14 happyReduction_33
happyReduction_33 _
	(HappyAbsSyn13  happy_var_2)
	_
	 =  HappyAbsSyn14
		 (happy_var_2
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 38 38 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenLet -> cont 15;
	TokenType -> cont 16;
	TokenTypeof -> cont 17;
	TokenIn -> cont 18;
	TokenInt happy_dollar_dollar -> cont 19;
	TokenBool happy_dollar_dollar -> cont 20;
	TokenString happy_dollar_dollar -> cont 21;
	TokenLiteral happy_dollar_dollar -> cont 22;
	TokenFatArrow -> cont 23;
	TokenArrow -> cont 24;
	TokenAnd -> cont 25;
	TokenOr -> cont 26;
	TokenQuote -> cont 27;
	TokenEq -> cont 28;
	TokenPlus -> cont 29;
	TokenMinus -> cont 30;
	TokenTimes -> cont 31;
	TokenDiv -> cont 32;
	TokenOB -> cont 33;
	TokenCB -> cont 34;
	TokenColon -> cont 35;
	TokenPipe -> cont 36;
	TokenAmpersand -> cont 37;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 38 tk tks = happyError' (tks, explist)
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

data SExpr
      = SLet String SExpr SExpr SExpr
      | SLetInfer String SExpr SExpr
      | STypeAlias String SExpr SExpr
      | SDef String SExpr SExpr SExpr
      | SDefInfer String SExpr SExpr
      | SApp SExpr SExpr
      | SPlus SExpr SExpr
      | SMinus SExpr SExpr
      | STimes SExpr SExpr
      | SDiv SExpr SExpr
      | SAnd SExpr SExpr
      | SOr SExpr SExpr
      | SString String
      | SInt Int
      | SName String
      | SBool Bool
      | SBrack SExpr
      | SType String
      | STypeof SExpr
      | STypeUnion SExpr SExpr
      | STypeIntersection SExpr SExpr
      | STypeFunc SExpr SExpr
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
