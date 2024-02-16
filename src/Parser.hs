{-# OPTIONS_GHC -w #-}
module Parser
  ( parse,
    Token (..),
    SExpr (..),
  )
where

import Lexer (Token (..))
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16
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
	| HappyAbsSyn15 t15
	| HappyAbsSyn16 t16

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,337) ([0,33971,1056,8192,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,192,0,0,96,0,8192,0,0,512,0,0,0,0,8192,0,0,1024,0,0,0,0,0,0,0,52224,33298,16,22912,4162,2,1024,0,0,2406,2113,0,32,0,0,0,64,0,16384,0,38496,37904,0,0,2,0,1024,0,0,0,0,0,512,0,0,8256,0,1408,260,0,32944,32,0,4118,4,49152,33282,0,22528,4160,0,2816,520,0,0,256,0,33,8,0,49152,0,0,0,0,38496,33808,0,0,96,0,8192,0,0,1024,0,0,64,0,0,0,0,9624,8452,0,132,32,24576,4246,132,0,0,0,16896,4096,0,19248,16904,0,2400,65,0,0,0,0,0,0,0,16384,0,16384,24576,0,4812,4226,0,0,0,16384,8,2,0,32,0,512,0,0,64,0,0,0,64,0,8192,0,52224,33298,16,0,0,0,19248,16904,0,2406,2113,49152,8492,264,0,0,2,0,0,0,4224,1024,0,528,128,0,66,16,0,16,8,26112,16649,8,8448,2048,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,38912,1061,33,0,1,0,0,0,0,4812,4226,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Expr","TypeDef","GenericDef","FuncDef","Conditional","FuncApp","LowTerm","HighTerm","LowLogicOp","HighLogicOp","Factor","LowTypeNote","HighTypeNote","let","type","typeof","in","int","bool","string","literal","fatarrow","arrow","if","then","else","and","or","'\"'","'='","'+'","'-'","'*'","'/'","'('","')'","':'","'|'","'&'","'<'","'>'","%eof"]
        bit_start = st Prelude.* 45
        bit_end = (st Prelude.+ 1) Prelude.* 45
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..44]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (17) = happyShift action_14
action_0 (18) = happyShift action_15
action_0 (21) = happyShift action_16
action_0 (22) = happyShift action_17
action_0 (24) = happyShift action_18
action_0 (27) = happyShift action_19
action_0 (32) = happyShift action_20
action_0 (38) = happyShift action_21
action_0 (43) = happyShift action_22
action_0 (4) = happyGoto action_3
action_0 (5) = happyGoto action_4
action_0 (6) = happyGoto action_5
action_0 (7) = happyGoto action_6
action_0 (8) = happyGoto action_7
action_0 (9) = happyGoto action_8
action_0 (10) = happyGoto action_9
action_0 (11) = happyGoto action_10
action_0 (12) = happyGoto action_11
action_0 (13) = happyGoto action_12
action_0 (14) = happyGoto action_13
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (17) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (24) = happyShift action_37
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (45) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_3

action_5 _ = happyReduce_5

action_6 _ = happyReduce_7

action_7 _ = happyReduce_10

action_8 _ = happyReduce_12

action_9 (34) = happyShift action_35
action_9 (35) = happyShift action_36
action_9 _ = happyReduce_15

action_10 (36) = happyShift action_33
action_10 (37) = happyShift action_34
action_10 _ = happyReduce_18

action_11 (31) = happyShift action_32
action_11 _ = happyReduce_21

action_12 (30) = happyShift action_31
action_12 _ = happyReduce_23

action_13 _ = happyReduce_25

action_14 (24) = happyShift action_30
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (24) = happyShift action_29
action_15 _ = happyFail (happyExpListPerState 15)

action_16 _ = happyReduce_28

action_17 _ = happyReduce_29

action_18 (17) = happyShift action_14
action_18 (18) = happyShift action_15
action_18 (21) = happyShift action_16
action_18 (22) = happyShift action_17
action_18 (24) = happyShift action_18
action_18 (27) = happyShift action_19
action_18 (32) = happyShift action_20
action_18 (38) = happyShift action_21
action_18 (43) = happyShift action_22
action_18 (4) = happyGoto action_28
action_18 (5) = happyGoto action_4
action_18 (6) = happyGoto action_5
action_18 (7) = happyGoto action_6
action_18 (8) = happyGoto action_7
action_18 (9) = happyGoto action_8
action_18 (10) = happyGoto action_9
action_18 (11) = happyGoto action_10
action_18 (12) = happyGoto action_11
action_18 (13) = happyGoto action_12
action_18 (14) = happyGoto action_13
action_18 _ = happyReduce_27

action_19 (17) = happyShift action_14
action_19 (18) = happyShift action_15
action_19 (21) = happyShift action_16
action_19 (22) = happyShift action_17
action_19 (24) = happyShift action_18
action_19 (27) = happyShift action_19
action_19 (32) = happyShift action_20
action_19 (38) = happyShift action_21
action_19 (43) = happyShift action_22
action_19 (4) = happyGoto action_27
action_19 (5) = happyGoto action_4
action_19 (6) = happyGoto action_5
action_19 (7) = happyGoto action_6
action_19 (8) = happyGoto action_7
action_19 (9) = happyGoto action_8
action_19 (10) = happyGoto action_9
action_19 (11) = happyGoto action_10
action_19 (12) = happyGoto action_11
action_19 (13) = happyGoto action_12
action_19 (14) = happyGoto action_13
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (23) = happyShift action_26
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (17) = happyShift action_14
action_21 (18) = happyShift action_15
action_21 (21) = happyShift action_16
action_21 (22) = happyShift action_17
action_21 (24) = happyShift action_25
action_21 (27) = happyShift action_19
action_21 (32) = happyShift action_20
action_21 (38) = happyShift action_21
action_21 (43) = happyShift action_22
action_21 (4) = happyGoto action_24
action_21 (5) = happyGoto action_4
action_21 (6) = happyGoto action_5
action_21 (7) = happyGoto action_6
action_21 (8) = happyGoto action_7
action_21 (9) = happyGoto action_8
action_21 (10) = happyGoto action_9
action_21 (11) = happyGoto action_10
action_21 (12) = happyGoto action_11
action_21 (13) = happyGoto action_12
action_21 (14) = happyGoto action_13
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (24) = happyShift action_23
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (44) = happyShift action_53
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (39) = happyShift action_52
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (17) = happyShift action_14
action_25 (18) = happyShift action_15
action_25 (21) = happyShift action_16
action_25 (22) = happyShift action_17
action_25 (24) = happyShift action_18
action_25 (27) = happyShift action_19
action_25 (32) = happyShift action_20
action_25 (38) = happyShift action_21
action_25 (40) = happyShift action_51
action_25 (43) = happyShift action_22
action_25 (4) = happyGoto action_28
action_25 (5) = happyGoto action_4
action_25 (6) = happyGoto action_5
action_25 (7) = happyGoto action_6
action_25 (8) = happyGoto action_7
action_25 (9) = happyGoto action_8
action_25 (10) = happyGoto action_9
action_25 (11) = happyGoto action_10
action_25 (12) = happyGoto action_11
action_25 (13) = happyGoto action_12
action_25 (14) = happyGoto action_13
action_25 _ = happyReduce_27

action_26 (32) = happyShift action_50
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (28) = happyShift action_49
action_27 _ = happyFail (happyExpListPerState 27)

action_28 _ = happyReduce_13

action_29 (33) = happyShift action_48
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (33) = happyShift action_47
action_30 (40) = happyShift action_38
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (21) = happyShift action_16
action_31 (22) = happyShift action_17
action_31 (24) = happyShift action_40
action_31 (32) = happyShift action_20
action_31 (38) = happyShift action_41
action_31 (14) = happyGoto action_46
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (21) = happyShift action_16
action_32 (22) = happyShift action_17
action_32 (24) = happyShift action_40
action_32 (32) = happyShift action_20
action_32 (38) = happyShift action_41
action_32 (13) = happyGoto action_45
action_32 (14) = happyGoto action_13
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (21) = happyShift action_16
action_33 (22) = happyShift action_17
action_33 (24) = happyShift action_40
action_33 (32) = happyShift action_20
action_33 (38) = happyShift action_41
action_33 (12) = happyGoto action_44
action_33 (13) = happyGoto action_12
action_33 (14) = happyGoto action_13
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (21) = happyShift action_16
action_34 (22) = happyShift action_17
action_34 (24) = happyShift action_40
action_34 (32) = happyShift action_20
action_34 (38) = happyShift action_41
action_34 (12) = happyGoto action_43
action_34 (13) = happyGoto action_12
action_34 (14) = happyGoto action_13
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (21) = happyShift action_16
action_35 (22) = happyShift action_17
action_35 (24) = happyShift action_40
action_35 (32) = happyShift action_20
action_35 (38) = happyShift action_41
action_35 (11) = happyGoto action_42
action_35 (12) = happyGoto action_11
action_35 (13) = happyGoto action_12
action_35 (14) = happyGoto action_13
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (21) = happyShift action_16
action_36 (22) = happyShift action_17
action_36 (24) = happyShift action_40
action_36 (32) = happyShift action_20
action_36 (38) = happyShift action_41
action_36 (11) = happyGoto action_39
action_36 (12) = happyGoto action_11
action_36 (13) = happyGoto action_12
action_36 (14) = happyGoto action_13
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (40) = happyShift action_38
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (19) = happyShift action_58
action_38 (24) = happyShift action_59
action_38 (38) = happyShift action_60
action_38 (15) = happyGoto action_65
action_38 (16) = happyGoto action_57
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (36) = happyShift action_33
action_39 (37) = happyShift action_34
action_39 _ = happyReduce_17

action_40 _ = happyReduce_27

action_41 (17) = happyShift action_14
action_41 (18) = happyShift action_15
action_41 (21) = happyShift action_16
action_41 (22) = happyShift action_17
action_41 (24) = happyShift action_18
action_41 (27) = happyShift action_19
action_41 (32) = happyShift action_20
action_41 (38) = happyShift action_21
action_41 (43) = happyShift action_22
action_41 (4) = happyGoto action_64
action_41 (5) = happyGoto action_4
action_41 (6) = happyGoto action_5
action_41 (7) = happyGoto action_6
action_41 (8) = happyGoto action_7
action_41 (9) = happyGoto action_8
action_41 (10) = happyGoto action_9
action_41 (11) = happyGoto action_10
action_41 (12) = happyGoto action_11
action_41 (13) = happyGoto action_12
action_41 (14) = happyGoto action_13
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (36) = happyShift action_33
action_42 (37) = happyShift action_34
action_42 _ = happyReduce_16

action_43 (31) = happyShift action_32
action_43 _ = happyReduce_20

action_44 (31) = happyShift action_32
action_44 _ = happyReduce_19

action_45 (30) = happyShift action_31
action_45 _ = happyReduce_22

action_46 _ = happyReduce_24

action_47 (17) = happyShift action_14
action_47 (18) = happyShift action_15
action_47 (21) = happyShift action_16
action_47 (22) = happyShift action_17
action_47 (24) = happyShift action_18
action_47 (27) = happyShift action_19
action_47 (32) = happyShift action_20
action_47 (38) = happyShift action_21
action_47 (43) = happyShift action_22
action_47 (4) = happyGoto action_63
action_47 (5) = happyGoto action_4
action_47 (6) = happyGoto action_5
action_47 (7) = happyGoto action_6
action_47 (8) = happyGoto action_7
action_47 (9) = happyGoto action_8
action_47 (10) = happyGoto action_9
action_47 (11) = happyGoto action_10
action_47 (12) = happyGoto action_11
action_47 (13) = happyGoto action_12
action_47 (14) = happyGoto action_13
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (19) = happyShift action_58
action_48 (24) = happyShift action_59
action_48 (38) = happyShift action_60
action_48 (15) = happyGoto action_62
action_48 (16) = happyGoto action_57
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (17) = happyShift action_14
action_49 (18) = happyShift action_15
action_49 (21) = happyShift action_16
action_49 (22) = happyShift action_17
action_49 (24) = happyShift action_18
action_49 (27) = happyShift action_19
action_49 (32) = happyShift action_20
action_49 (38) = happyShift action_21
action_49 (43) = happyShift action_22
action_49 (4) = happyGoto action_61
action_49 (5) = happyGoto action_4
action_49 (6) = happyGoto action_5
action_49 (7) = happyGoto action_6
action_49 (8) = happyGoto action_7
action_49 (9) = happyGoto action_8
action_49 (10) = happyGoto action_9
action_49 (11) = happyGoto action_10
action_49 (12) = happyGoto action_11
action_49 (13) = happyGoto action_12
action_49 (14) = happyGoto action_13
action_49 _ = happyFail (happyExpListPerState 49)

action_50 _ = happyReduce_26

action_51 (19) = happyShift action_58
action_51 (24) = happyShift action_59
action_51 (38) = happyShift action_60
action_51 (15) = happyGoto action_56
action_51 (16) = happyGoto action_57
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (17) = happyShift action_14
action_52 (18) = happyShift action_15
action_52 (21) = happyShift action_16
action_52 (22) = happyShift action_17
action_52 (24) = happyShift action_18
action_52 (27) = happyShift action_19
action_52 (32) = happyShift action_20
action_52 (38) = happyShift action_21
action_52 (43) = happyShift action_22
action_52 (4) = happyGoto action_55
action_52 (5) = happyGoto action_4
action_52 (6) = happyGoto action_5
action_52 (7) = happyGoto action_6
action_52 (8) = happyGoto action_7
action_52 (9) = happyGoto action_8
action_52 (10) = happyGoto action_9
action_52 (11) = happyGoto action_10
action_52 (12) = happyGoto action_11
action_52 (13) = happyGoto action_12
action_52 (14) = happyGoto action_13
action_52 _ = happyReduce_30

action_53 (21) = happyShift action_16
action_53 (22) = happyShift action_17
action_53 (24) = happyShift action_18
action_53 (27) = happyShift action_19
action_53 (32) = happyShift action_20
action_53 (38) = happyShift action_21
action_53 (7) = happyGoto action_54
action_53 (8) = happyGoto action_7
action_53 (9) = happyGoto action_8
action_53 (10) = happyGoto action_9
action_53 (11) = happyGoto action_10
action_53 (12) = happyGoto action_11
action_53 (13) = happyGoto action_12
action_53 (14) = happyGoto action_13
action_53 _ = happyFail (happyExpListPerState 53)

action_54 _ = happyReduce_6

action_55 _ = happyReduce_14

action_56 (39) = happyShift action_76
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (26) = happyShift action_73
action_57 (41) = happyShift action_74
action_57 (42) = happyShift action_75
action_57 _ = happyReduce_34

action_58 (17) = happyShift action_14
action_58 (18) = happyShift action_15
action_58 (21) = happyShift action_16
action_58 (22) = happyShift action_17
action_58 (24) = happyShift action_18
action_58 (27) = happyShift action_19
action_58 (32) = happyShift action_20
action_58 (38) = happyShift action_21
action_58 (43) = happyShift action_22
action_58 (4) = happyGoto action_72
action_58 (5) = happyGoto action_4
action_58 (6) = happyGoto action_5
action_58 (7) = happyGoto action_6
action_58 (8) = happyGoto action_7
action_58 (9) = happyGoto action_8
action_58 (10) = happyGoto action_9
action_58 (11) = happyGoto action_10
action_58 (12) = happyGoto action_11
action_58 (13) = happyGoto action_12
action_58 (14) = happyGoto action_13
action_58 _ = happyFail (happyExpListPerState 58)

action_59 _ = happyReduce_35

action_60 (19) = happyShift action_58
action_60 (24) = happyShift action_59
action_60 (38) = happyShift action_60
action_60 (15) = happyGoto action_71
action_60 (16) = happyGoto action_57
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (29) = happyShift action_70
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (20) = happyShift action_69
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (20) = happyShift action_68
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (39) = happyShift action_67
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (33) = happyShift action_66
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (17) = happyShift action_14
action_66 (18) = happyShift action_15
action_66 (21) = happyShift action_16
action_66 (22) = happyShift action_17
action_66 (24) = happyShift action_18
action_66 (27) = happyShift action_19
action_66 (32) = happyShift action_20
action_66 (38) = happyShift action_21
action_66 (43) = happyShift action_22
action_66 (4) = happyGoto action_86
action_66 (5) = happyGoto action_4
action_66 (6) = happyGoto action_5
action_66 (7) = happyGoto action_6
action_66 (8) = happyGoto action_7
action_66 (9) = happyGoto action_8
action_66 (10) = happyGoto action_9
action_66 (11) = happyGoto action_10
action_66 (12) = happyGoto action_11
action_66 (13) = happyGoto action_12
action_66 (14) = happyGoto action_13
action_66 _ = happyFail (happyExpListPerState 66)

action_67 _ = happyReduce_30

action_68 (17) = happyShift action_14
action_68 (18) = happyShift action_15
action_68 (21) = happyShift action_16
action_68 (22) = happyShift action_17
action_68 (24) = happyShift action_18
action_68 (27) = happyShift action_19
action_68 (32) = happyShift action_20
action_68 (38) = happyShift action_21
action_68 (43) = happyShift action_22
action_68 (4) = happyGoto action_85
action_68 (5) = happyGoto action_4
action_68 (6) = happyGoto action_5
action_68 (7) = happyGoto action_6
action_68 (8) = happyGoto action_7
action_68 (9) = happyGoto action_8
action_68 (10) = happyGoto action_9
action_68 (11) = happyGoto action_10
action_68 (12) = happyGoto action_11
action_68 (13) = happyGoto action_12
action_68 (14) = happyGoto action_13
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (17) = happyShift action_14
action_69 (18) = happyShift action_15
action_69 (21) = happyShift action_16
action_69 (22) = happyShift action_17
action_69 (24) = happyShift action_18
action_69 (27) = happyShift action_19
action_69 (32) = happyShift action_20
action_69 (38) = happyShift action_21
action_69 (43) = happyShift action_22
action_69 (4) = happyGoto action_84
action_69 (5) = happyGoto action_4
action_69 (6) = happyGoto action_5
action_69 (7) = happyGoto action_6
action_69 (8) = happyGoto action_7
action_69 (9) = happyGoto action_8
action_69 (10) = happyGoto action_9
action_69 (11) = happyGoto action_10
action_69 (12) = happyGoto action_11
action_69 (13) = happyGoto action_12
action_69 (14) = happyGoto action_13
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (17) = happyShift action_14
action_70 (18) = happyShift action_15
action_70 (21) = happyShift action_16
action_70 (22) = happyShift action_17
action_70 (24) = happyShift action_18
action_70 (27) = happyShift action_19
action_70 (32) = happyShift action_20
action_70 (38) = happyShift action_21
action_70 (43) = happyShift action_22
action_70 (4) = happyGoto action_83
action_70 (5) = happyGoto action_4
action_70 (6) = happyGoto action_5
action_70 (7) = happyGoto action_6
action_70 (8) = happyGoto action_7
action_70 (9) = happyGoto action_8
action_70 (10) = happyGoto action_9
action_70 (11) = happyGoto action_10
action_70 (12) = happyGoto action_11
action_70 (13) = happyGoto action_12
action_70 (14) = happyGoto action_13
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (39) = happyShift action_82
action_71 _ = happyFail (happyExpListPerState 71)

action_72 _ = happyReduce_36

action_73 (19) = happyShift action_58
action_73 (24) = happyShift action_59
action_73 (38) = happyShift action_60
action_73 (15) = happyGoto action_81
action_73 (16) = happyGoto action_57
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (19) = happyShift action_58
action_74 (24) = happyShift action_59
action_74 (38) = happyShift action_60
action_74 (15) = happyGoto action_80
action_74 (16) = happyGoto action_57
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (19) = happyShift action_58
action_75 (24) = happyShift action_59
action_75 (38) = happyShift action_60
action_75 (15) = happyGoto action_79
action_75 (16) = happyGoto action_57
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (25) = happyShift action_77
action_76 (40) = happyShift action_78
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (17) = happyShift action_14
action_77 (18) = happyShift action_15
action_77 (21) = happyShift action_16
action_77 (22) = happyShift action_17
action_77 (24) = happyShift action_18
action_77 (27) = happyShift action_19
action_77 (32) = happyShift action_20
action_77 (38) = happyShift action_21
action_77 (43) = happyShift action_22
action_77 (4) = happyGoto action_89
action_77 (5) = happyGoto action_4
action_77 (6) = happyGoto action_5
action_77 (7) = happyGoto action_6
action_77 (8) = happyGoto action_7
action_77 (9) = happyGoto action_8
action_77 (10) = happyGoto action_9
action_77 (11) = happyGoto action_10
action_77 (12) = happyGoto action_11
action_77 (13) = happyGoto action_12
action_77 (14) = happyGoto action_13
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (19) = happyShift action_58
action_78 (24) = happyShift action_59
action_78 (38) = happyShift action_60
action_78 (15) = happyGoto action_88
action_78 (16) = happyGoto action_57
action_78 _ = happyFail (happyExpListPerState 78)

action_79 _ = happyReduce_33

action_80 _ = happyReduce_32

action_81 _ = happyReduce_31

action_82 _ = happyReduce_37

action_83 _ = happyReduce_11

action_84 _ = happyReduce_4

action_85 _ = happyReduce_2

action_86 (20) = happyShift action_87
action_86 _ = happyFail (happyExpListPerState 86)

action_87 (17) = happyShift action_14
action_87 (18) = happyShift action_15
action_87 (21) = happyShift action_16
action_87 (22) = happyShift action_17
action_87 (24) = happyShift action_18
action_87 (27) = happyShift action_19
action_87 (32) = happyShift action_20
action_87 (38) = happyShift action_21
action_87 (43) = happyShift action_22
action_87 (4) = happyGoto action_91
action_87 (5) = happyGoto action_4
action_87 (6) = happyGoto action_5
action_87 (7) = happyGoto action_6
action_87 (8) = happyGoto action_7
action_87 (9) = happyGoto action_8
action_87 (10) = happyGoto action_9
action_87 (11) = happyGoto action_10
action_87 (12) = happyGoto action_11
action_87 (13) = happyGoto action_12
action_87 (14) = happyGoto action_13
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (25) = happyShift action_90
action_88 _ = happyFail (happyExpListPerState 88)

action_89 _ = happyReduce_9

action_90 (17) = happyShift action_14
action_90 (18) = happyShift action_15
action_90 (21) = happyShift action_16
action_90 (22) = happyShift action_17
action_90 (24) = happyShift action_18
action_90 (27) = happyShift action_19
action_90 (32) = happyShift action_20
action_90 (38) = happyShift action_21
action_90 (43) = happyShift action_22
action_90 (4) = happyGoto action_92
action_90 (5) = happyGoto action_4
action_90 (6) = happyGoto action_5
action_90 (7) = happyGoto action_6
action_90 (8) = happyGoto action_7
action_90 (9) = happyGoto action_8
action_90 (10) = happyGoto action_9
action_90 (11) = happyGoto action_10
action_90 (12) = happyGoto action_11
action_90 (13) = happyGoto action_12
action_90 (14) = happyGoto action_13
action_90 _ = happyFail (happyExpListPerState 90)

action_91 _ = happyReduce_1

action_92 _ = happyReduce_8

happyReduce_1 = happyReduce 8 4 happyReduction_1
happyReduction_1 ((HappyAbsSyn4  happy_var_8) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_4) `HappyStk`
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
	(HappyAbsSyn15  happy_var_4) `HappyStk`
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

happyReduce_6 = happyReduce 4 6 happyReduction_6
happyReduction_6 ((HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenLiteral happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (SDefGeneric happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_7 = happySpecReduce_1  6 happyReduction_7
happyReduction_7 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happyReduce 9 7 happyReduction_8
happyReduction_8 ((HappyAbsSyn4  happy_var_9) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenLiteral happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (SDef happy_var_2 happy_var_4 happy_var_7 happy_var_9
	) `HappyStk` happyRest

happyReduce_9 = happyReduce 7 7 happyReduction_9
happyReduction_9 ((HappyAbsSyn4  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenLiteral happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (SDefInfer happy_var_2 happy_var_4 happy_var_7
	) `HappyStk` happyRest

happyReduce_10 = happySpecReduce_1  7 happyReduction_10
happyReduction_10 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happyReduce 6 8 happyReduction_11
happyReduction_11 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (SConditional happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_12 = happySpecReduce_1  8 happyReduction_12
happyReduction_12 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_2  9 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_2)
	(HappyTerminal (TokenLiteral happy_var_1))
	 =  HappyAbsSyn9
		 (SApp (SName happy_var_1) happy_var_2
	)
happyReduction_13 _ _  = notHappyAtAll 

happyReduce_14 = happyReduce 4 9 happyReduction_14
happyReduction_14 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (SApp happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_15 = happySpecReduce_1  9 happyReduction_15
happyReduction_15 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  10 happyReduction_16
happyReduction_16 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (SPlus happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  10 happyReduction_17
happyReduction_17 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (SMinus happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  10 happyReduction_18
happyReduction_18 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  11 happyReduction_19
happyReduction_19 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (STimes happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_3  11 happyReduction_20
happyReduction_20 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (SDiv happy_var_1 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  11 happyReduction_21
happyReduction_21 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  12 happyReduction_22
happyReduction_22 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (SOr happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  12 happyReduction_23
happyReduction_23 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  13 happyReduction_24
happyReduction_24 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (SAnd happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  13 happyReduction_25
happyReduction_25 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_1
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  14 happyReduction_26
happyReduction_26 _
	(HappyTerminal (TokenString happy_var_2))
	_
	 =  HappyAbsSyn14
		 (SString happy_var_2
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  14 happyReduction_27
happyReduction_27 (HappyTerminal (TokenLiteral happy_var_1))
	 =  HappyAbsSyn14
		 (SName happy_var_1
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_1  14 happyReduction_28
happyReduction_28 (HappyTerminal (TokenInt happy_var_1))
	 =  HappyAbsSyn14
		 (SInt happy_var_1
	)
happyReduction_28 _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_1  14 happyReduction_29
happyReduction_29 (HappyTerminal (TokenBool happy_var_1))
	 =  HappyAbsSyn14
		 (SBool happy_var_1
	)
happyReduction_29 _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  14 happyReduction_30
happyReduction_30 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn14
		 (SBrack happy_var_2
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  15 happyReduction_31
happyReduction_31 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn15
		 (STypeFunc happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  15 happyReduction_32
happyReduction_32 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn15
		 (STypeUnion happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  15 happyReduction_33
happyReduction_33 (HappyAbsSyn15  happy_var_3)
	_
	(HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn15
		 (STypeIntersection happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_1  15 happyReduction_34
happyReduction_34 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_1
	)
happyReduction_34 _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_1  16 happyReduction_35
happyReduction_35 (HappyTerminal (TokenLiteral happy_var_1))
	 =  HappyAbsSyn16
		 (SType happy_var_1
	)
happyReduction_35 _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_2  16 happyReduction_36
happyReduction_36 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn16
		 (STypeof happy_var_2
	)
happyReduction_36 _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  16 happyReduction_37
happyReduction_37 _
	(HappyAbsSyn15  happy_var_2)
	_
	 =  HappyAbsSyn16
		 (happy_var_2
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 45 45 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenLet -> cont 17;
	TokenType -> cont 18;
	TokenTypeof -> cont 19;
	TokenIn -> cont 20;
	TokenInt happy_dollar_dollar -> cont 21;
	TokenBool happy_dollar_dollar -> cont 22;
	TokenString happy_dollar_dollar -> cont 23;
	TokenLiteral happy_dollar_dollar -> cont 24;
	TokenFatArrow -> cont 25;
	TokenArrow -> cont 26;
	TokenIf -> cont 27;
	TokenThen -> cont 28;
	TokenElse -> cont 29;
	TokenAnd -> cont 30;
	TokenOr -> cont 31;
	TokenQuote -> cont 32;
	TokenEq -> cont 33;
	TokenPlus -> cont 34;
	TokenMinus -> cont 35;
	TokenTimes -> cont 36;
	TokenDiv -> cont 37;
	TokenOB -> cont 38;
	TokenCB -> cont 39;
	TokenColon -> cont 40;
	TokenPipe -> cont 41;
	TokenAmpersand -> cont 42;
	TokenLT -> cont 43;
	TokenGT -> cont 44;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 45 tk tks = happyError' (tks, explist)
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
  | SDefGeneric String SExpr
  | SDef String SExpr SExpr SExpr
  | SDefInfer String SExpr SExpr
  | SConditional SExpr SExpr SExpr
  | SApp SExpr SExpr
  | SPlus SExpr SExpr
  | SMinus SExpr SExpr
  | STimes SExpr SExpr
  | SDiv SExpr SExpr
  | SAnd SExpr SExpr
  | SOr SExpr SExpr
  | SString String
  | SInt Integer
  | SName String
  | SBool Bool
  | SBrack SExpr
  | SType String
  | STypeof SExpr
  | STypeUnion SExpr SExpr
  | STypeIntersection SExpr SExpr
  | STypeFunc SExpr SExpr
  deriving (Show)
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
