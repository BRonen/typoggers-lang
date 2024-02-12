{-# OPTIONS_GHC -w #-}
module Parser (
      parse,
      Token (..),
      SExpr (..),
      ) where

import Lexer (Token (..))
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.1.1

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15
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

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,298) ([32768,16985,16,512,0,0,1024,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,12288,0,0,2,0,1024,0,0,0,0,256,0,0,4,0,0,0,0,0,0,26112,16649,0,9624,260,0,8,0,22912,4162,0,0,128,38912,1061,5,0,16,0,1024,0,0,0,0,0,8,0,8192,16,22528,4160,0,352,65,32768,1029,1,5632,1040,0,16472,16,24576,16641,0,0,1024,32768,16,4,0,3072,0,0,0,38912,1061,1,0,768,0,8192,0,0,128,0,0,1,0,0,0,22912,4162,0,264,64,38912,1061,1,0,0,0,66,16,26112,16649,0,0,0,0,0,8,0,32769,1,2406,65,0,0,0,4224,1024,0,2048,0,4096,0,0,64,0,0,0,8,0,128,0,2406,65,0,0,0,38496,1040,32768,16985,16,26112,16649,0,0,512,0,0,0,16896,4096,0,264,64,8192,4,1,8192,4096,32768,16985,16,2048,16385,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4096,0,0,9624,260,0,32,0,0,0,0,2406,65,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Expr","TypeDef","FuncDef","Conditional","FuncApp","LowTerm","HighTerm","LowLogicOp","HighLogicOp","Factor","LowTypeNote","HighTypeNote","let","type","typeof","in","int","bool","string","literal","fatarrow","arrow","if","then","else","and","or","'\"'","'='","'+'","'-'","'*'","'/'","'('","')'","':'","'|'","'&'","%eof"]
        bit_start = st Prelude.* 42
        bit_end = (st Prelude.+ 1) Prelude.* 42
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..41]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (16) = happyShift action_13
action_0 (17) = happyShift action_14
action_0 (20) = happyShift action_15
action_0 (21) = happyShift action_16
action_0 (23) = happyShift action_17
action_0 (26) = happyShift action_18
action_0 (31) = happyShift action_19
action_0 (37) = happyShift action_20
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
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (16) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (23) = happyShift action_34
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (42) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_3

action_5 _ = happyReduce_5

action_6 _ = happyReduce_8

action_7 _ = happyReduce_10

action_8 (33) = happyShift action_32
action_8 (34) = happyShift action_33
action_8 _ = happyReduce_13

action_9 (35) = happyShift action_30
action_9 (36) = happyShift action_31
action_9 _ = happyReduce_16

action_10 (30) = happyShift action_29
action_10 _ = happyReduce_19

action_11 (29) = happyShift action_28
action_11 _ = happyReduce_21

action_12 _ = happyReduce_23

action_13 (23) = happyShift action_27
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (23) = happyShift action_26
action_14 _ = happyFail (happyExpListPerState 14)

action_15 _ = happyReduce_26

action_16 _ = happyReduce_27

action_17 (16) = happyShift action_13
action_17 (17) = happyShift action_14
action_17 (20) = happyShift action_15
action_17 (21) = happyShift action_16
action_17 (23) = happyShift action_17
action_17 (26) = happyShift action_18
action_17 (31) = happyShift action_19
action_17 (37) = happyShift action_20
action_17 (4) = happyGoto action_25
action_17 (5) = happyGoto action_4
action_17 (6) = happyGoto action_5
action_17 (7) = happyGoto action_6
action_17 (8) = happyGoto action_7
action_17 (9) = happyGoto action_8
action_17 (10) = happyGoto action_9
action_17 (11) = happyGoto action_10
action_17 (12) = happyGoto action_11
action_17 (13) = happyGoto action_12
action_17 _ = happyReduce_25

action_18 (16) = happyShift action_13
action_18 (17) = happyShift action_14
action_18 (20) = happyShift action_15
action_18 (21) = happyShift action_16
action_18 (23) = happyShift action_17
action_18 (26) = happyShift action_18
action_18 (31) = happyShift action_19
action_18 (37) = happyShift action_20
action_18 (4) = happyGoto action_24
action_18 (5) = happyGoto action_4
action_18 (6) = happyGoto action_5
action_18 (7) = happyGoto action_6
action_18 (8) = happyGoto action_7
action_18 (9) = happyGoto action_8
action_18 (10) = happyGoto action_9
action_18 (11) = happyGoto action_10
action_18 (12) = happyGoto action_11
action_18 (13) = happyGoto action_12
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (22) = happyShift action_23
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (16) = happyShift action_13
action_20 (17) = happyShift action_14
action_20 (20) = happyShift action_15
action_20 (21) = happyShift action_16
action_20 (23) = happyShift action_22
action_20 (26) = happyShift action_18
action_20 (31) = happyShift action_19
action_20 (37) = happyShift action_20
action_20 (4) = happyGoto action_21
action_20 (5) = happyGoto action_4
action_20 (6) = happyGoto action_5
action_20 (7) = happyGoto action_6
action_20 (8) = happyGoto action_7
action_20 (9) = happyGoto action_8
action_20 (10) = happyGoto action_9
action_20 (11) = happyGoto action_10
action_20 (12) = happyGoto action_11
action_20 (13) = happyGoto action_12
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (38) = happyShift action_49
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (16) = happyShift action_13
action_22 (17) = happyShift action_14
action_22 (20) = happyShift action_15
action_22 (21) = happyShift action_16
action_22 (23) = happyShift action_17
action_22 (26) = happyShift action_18
action_22 (31) = happyShift action_19
action_22 (37) = happyShift action_20
action_22 (39) = happyShift action_48
action_22 (4) = happyGoto action_25
action_22 (5) = happyGoto action_4
action_22 (6) = happyGoto action_5
action_22 (7) = happyGoto action_6
action_22 (8) = happyGoto action_7
action_22 (9) = happyGoto action_8
action_22 (10) = happyGoto action_9
action_22 (11) = happyGoto action_10
action_22 (12) = happyGoto action_11
action_22 (13) = happyGoto action_12
action_22 _ = happyReduce_25

action_23 (31) = happyShift action_47
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (27) = happyShift action_46
action_24 _ = happyFail (happyExpListPerState 24)

action_25 _ = happyReduce_11

action_26 (32) = happyShift action_45
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (32) = happyShift action_44
action_27 (39) = happyShift action_35
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (20) = happyShift action_15
action_28 (21) = happyShift action_16
action_28 (23) = happyShift action_37
action_28 (31) = happyShift action_19
action_28 (37) = happyShift action_38
action_28 (13) = happyGoto action_43
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (20) = happyShift action_15
action_29 (21) = happyShift action_16
action_29 (23) = happyShift action_37
action_29 (31) = happyShift action_19
action_29 (37) = happyShift action_38
action_29 (12) = happyGoto action_42
action_29 (13) = happyGoto action_12
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (20) = happyShift action_15
action_30 (21) = happyShift action_16
action_30 (23) = happyShift action_37
action_30 (31) = happyShift action_19
action_30 (37) = happyShift action_38
action_30 (11) = happyGoto action_41
action_30 (12) = happyGoto action_11
action_30 (13) = happyGoto action_12
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (20) = happyShift action_15
action_31 (21) = happyShift action_16
action_31 (23) = happyShift action_37
action_31 (31) = happyShift action_19
action_31 (37) = happyShift action_38
action_31 (11) = happyGoto action_40
action_31 (12) = happyGoto action_11
action_31 (13) = happyGoto action_12
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (20) = happyShift action_15
action_32 (21) = happyShift action_16
action_32 (23) = happyShift action_37
action_32 (31) = happyShift action_19
action_32 (37) = happyShift action_38
action_32 (10) = happyGoto action_39
action_32 (11) = happyGoto action_10
action_32 (12) = happyGoto action_11
action_32 (13) = happyGoto action_12
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (20) = happyShift action_15
action_33 (21) = happyShift action_16
action_33 (23) = happyShift action_37
action_33 (31) = happyShift action_19
action_33 (37) = happyShift action_38
action_33 (10) = happyGoto action_36
action_33 (11) = happyGoto action_10
action_33 (12) = happyGoto action_11
action_33 (13) = happyGoto action_12
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (39) = happyShift action_35
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (18) = happyShift action_53
action_35 (23) = happyShift action_54
action_35 (37) = happyShift action_55
action_35 (14) = happyGoto action_60
action_35 (15) = happyGoto action_52
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (35) = happyShift action_30
action_36 (36) = happyShift action_31
action_36 _ = happyReduce_15

action_37 _ = happyReduce_25

action_38 (16) = happyShift action_13
action_38 (17) = happyShift action_14
action_38 (20) = happyShift action_15
action_38 (21) = happyShift action_16
action_38 (23) = happyShift action_17
action_38 (26) = happyShift action_18
action_38 (31) = happyShift action_19
action_38 (37) = happyShift action_20
action_38 (4) = happyGoto action_59
action_38 (5) = happyGoto action_4
action_38 (6) = happyGoto action_5
action_38 (7) = happyGoto action_6
action_38 (8) = happyGoto action_7
action_38 (9) = happyGoto action_8
action_38 (10) = happyGoto action_9
action_38 (11) = happyGoto action_10
action_38 (12) = happyGoto action_11
action_38 (13) = happyGoto action_12
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (35) = happyShift action_30
action_39 (36) = happyShift action_31
action_39 _ = happyReduce_14

action_40 (30) = happyShift action_29
action_40 _ = happyReduce_18

action_41 (30) = happyShift action_29
action_41 _ = happyReduce_17

action_42 (29) = happyShift action_28
action_42 _ = happyReduce_20

action_43 _ = happyReduce_22

action_44 (16) = happyShift action_13
action_44 (17) = happyShift action_14
action_44 (20) = happyShift action_15
action_44 (21) = happyShift action_16
action_44 (23) = happyShift action_17
action_44 (26) = happyShift action_18
action_44 (31) = happyShift action_19
action_44 (37) = happyShift action_20
action_44 (4) = happyGoto action_58
action_44 (5) = happyGoto action_4
action_44 (6) = happyGoto action_5
action_44 (7) = happyGoto action_6
action_44 (8) = happyGoto action_7
action_44 (9) = happyGoto action_8
action_44 (10) = happyGoto action_9
action_44 (11) = happyGoto action_10
action_44 (12) = happyGoto action_11
action_44 (13) = happyGoto action_12
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (18) = happyShift action_53
action_45 (23) = happyShift action_54
action_45 (37) = happyShift action_55
action_45 (14) = happyGoto action_57
action_45 (15) = happyGoto action_52
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (16) = happyShift action_13
action_46 (17) = happyShift action_14
action_46 (20) = happyShift action_15
action_46 (21) = happyShift action_16
action_46 (23) = happyShift action_17
action_46 (26) = happyShift action_18
action_46 (31) = happyShift action_19
action_46 (37) = happyShift action_20
action_46 (4) = happyGoto action_56
action_46 (5) = happyGoto action_4
action_46 (6) = happyGoto action_5
action_46 (7) = happyGoto action_6
action_46 (8) = happyGoto action_7
action_46 (9) = happyGoto action_8
action_46 (10) = happyGoto action_9
action_46 (11) = happyGoto action_10
action_46 (12) = happyGoto action_11
action_46 (13) = happyGoto action_12
action_46 _ = happyFail (happyExpListPerState 46)

action_47 _ = happyReduce_24

action_48 (18) = happyShift action_53
action_48 (23) = happyShift action_54
action_48 (37) = happyShift action_55
action_48 (14) = happyGoto action_51
action_48 (15) = happyGoto action_52
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (16) = happyShift action_13
action_49 (17) = happyShift action_14
action_49 (20) = happyShift action_15
action_49 (21) = happyShift action_16
action_49 (23) = happyShift action_17
action_49 (26) = happyShift action_18
action_49 (31) = happyShift action_19
action_49 (37) = happyShift action_20
action_49 (4) = happyGoto action_50
action_49 (5) = happyGoto action_4
action_49 (6) = happyGoto action_5
action_49 (7) = happyGoto action_6
action_49 (8) = happyGoto action_7
action_49 (9) = happyGoto action_8
action_49 (10) = happyGoto action_9
action_49 (11) = happyGoto action_10
action_49 (12) = happyGoto action_11
action_49 (13) = happyGoto action_12
action_49 _ = happyReduce_28

action_50 _ = happyReduce_12

action_51 (38) = happyShift action_71
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (25) = happyShift action_68
action_52 (40) = happyShift action_69
action_52 (41) = happyShift action_70
action_52 _ = happyReduce_32

action_53 (16) = happyShift action_13
action_53 (17) = happyShift action_14
action_53 (20) = happyShift action_15
action_53 (21) = happyShift action_16
action_53 (23) = happyShift action_17
action_53 (26) = happyShift action_18
action_53 (31) = happyShift action_19
action_53 (37) = happyShift action_20
action_53 (4) = happyGoto action_67
action_53 (5) = happyGoto action_4
action_53 (6) = happyGoto action_5
action_53 (7) = happyGoto action_6
action_53 (8) = happyGoto action_7
action_53 (9) = happyGoto action_8
action_53 (10) = happyGoto action_9
action_53 (11) = happyGoto action_10
action_53 (12) = happyGoto action_11
action_53 (13) = happyGoto action_12
action_53 _ = happyFail (happyExpListPerState 53)

action_54 _ = happyReduce_33

action_55 (18) = happyShift action_53
action_55 (23) = happyShift action_54
action_55 (37) = happyShift action_55
action_55 (14) = happyGoto action_66
action_55 (15) = happyGoto action_52
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (28) = happyShift action_65
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (19) = happyShift action_64
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (19) = happyShift action_63
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (38) = happyShift action_62
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (32) = happyShift action_61
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (16) = happyShift action_13
action_61 (17) = happyShift action_14
action_61 (20) = happyShift action_15
action_61 (21) = happyShift action_16
action_61 (23) = happyShift action_17
action_61 (26) = happyShift action_18
action_61 (31) = happyShift action_19
action_61 (37) = happyShift action_20
action_61 (4) = happyGoto action_81
action_61 (5) = happyGoto action_4
action_61 (6) = happyGoto action_5
action_61 (7) = happyGoto action_6
action_61 (8) = happyGoto action_7
action_61 (9) = happyGoto action_8
action_61 (10) = happyGoto action_9
action_61 (11) = happyGoto action_10
action_61 (12) = happyGoto action_11
action_61 (13) = happyGoto action_12
action_61 _ = happyFail (happyExpListPerState 61)

action_62 _ = happyReduce_28

action_63 (16) = happyShift action_13
action_63 (17) = happyShift action_14
action_63 (20) = happyShift action_15
action_63 (21) = happyShift action_16
action_63 (23) = happyShift action_17
action_63 (26) = happyShift action_18
action_63 (31) = happyShift action_19
action_63 (37) = happyShift action_20
action_63 (4) = happyGoto action_80
action_63 (5) = happyGoto action_4
action_63 (6) = happyGoto action_5
action_63 (7) = happyGoto action_6
action_63 (8) = happyGoto action_7
action_63 (9) = happyGoto action_8
action_63 (10) = happyGoto action_9
action_63 (11) = happyGoto action_10
action_63 (12) = happyGoto action_11
action_63 (13) = happyGoto action_12
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (16) = happyShift action_13
action_64 (17) = happyShift action_14
action_64 (20) = happyShift action_15
action_64 (21) = happyShift action_16
action_64 (23) = happyShift action_17
action_64 (26) = happyShift action_18
action_64 (31) = happyShift action_19
action_64 (37) = happyShift action_20
action_64 (4) = happyGoto action_79
action_64 (5) = happyGoto action_4
action_64 (6) = happyGoto action_5
action_64 (7) = happyGoto action_6
action_64 (8) = happyGoto action_7
action_64 (9) = happyGoto action_8
action_64 (10) = happyGoto action_9
action_64 (11) = happyGoto action_10
action_64 (12) = happyGoto action_11
action_64 (13) = happyGoto action_12
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (16) = happyShift action_13
action_65 (17) = happyShift action_14
action_65 (20) = happyShift action_15
action_65 (21) = happyShift action_16
action_65 (23) = happyShift action_17
action_65 (26) = happyShift action_18
action_65 (31) = happyShift action_19
action_65 (37) = happyShift action_20
action_65 (4) = happyGoto action_78
action_65 (5) = happyGoto action_4
action_65 (6) = happyGoto action_5
action_65 (7) = happyGoto action_6
action_65 (8) = happyGoto action_7
action_65 (9) = happyGoto action_8
action_65 (10) = happyGoto action_9
action_65 (11) = happyGoto action_10
action_65 (12) = happyGoto action_11
action_65 (13) = happyGoto action_12
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (38) = happyShift action_77
action_66 _ = happyFail (happyExpListPerState 66)

action_67 _ = happyReduce_34

action_68 (18) = happyShift action_53
action_68 (23) = happyShift action_54
action_68 (37) = happyShift action_55
action_68 (14) = happyGoto action_76
action_68 (15) = happyGoto action_52
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (18) = happyShift action_53
action_69 (23) = happyShift action_54
action_69 (37) = happyShift action_55
action_69 (14) = happyGoto action_75
action_69 (15) = happyGoto action_52
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (18) = happyShift action_53
action_70 (23) = happyShift action_54
action_70 (37) = happyShift action_55
action_70 (14) = happyGoto action_74
action_70 (15) = happyGoto action_52
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (24) = happyShift action_72
action_71 (39) = happyShift action_73
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (16) = happyShift action_13
action_72 (17) = happyShift action_14
action_72 (20) = happyShift action_15
action_72 (21) = happyShift action_16
action_72 (23) = happyShift action_17
action_72 (26) = happyShift action_18
action_72 (31) = happyShift action_19
action_72 (37) = happyShift action_20
action_72 (4) = happyGoto action_84
action_72 (5) = happyGoto action_4
action_72 (6) = happyGoto action_5
action_72 (7) = happyGoto action_6
action_72 (8) = happyGoto action_7
action_72 (9) = happyGoto action_8
action_72 (10) = happyGoto action_9
action_72 (11) = happyGoto action_10
action_72 (12) = happyGoto action_11
action_72 (13) = happyGoto action_12
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (18) = happyShift action_53
action_73 (23) = happyShift action_54
action_73 (37) = happyShift action_55
action_73 (14) = happyGoto action_83
action_73 (15) = happyGoto action_52
action_73 _ = happyFail (happyExpListPerState 73)

action_74 _ = happyReduce_31

action_75 _ = happyReduce_30

action_76 _ = happyReduce_29

action_77 _ = happyReduce_35

action_78 _ = happyReduce_9

action_79 _ = happyReduce_4

action_80 _ = happyReduce_2

action_81 (19) = happyShift action_82
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (16) = happyShift action_13
action_82 (17) = happyShift action_14
action_82 (20) = happyShift action_15
action_82 (21) = happyShift action_16
action_82 (23) = happyShift action_17
action_82 (26) = happyShift action_18
action_82 (31) = happyShift action_19
action_82 (37) = happyShift action_20
action_82 (4) = happyGoto action_86
action_82 (5) = happyGoto action_4
action_82 (6) = happyGoto action_5
action_82 (7) = happyGoto action_6
action_82 (8) = happyGoto action_7
action_82 (9) = happyGoto action_8
action_82 (10) = happyGoto action_9
action_82 (11) = happyGoto action_10
action_82 (12) = happyGoto action_11
action_82 (13) = happyGoto action_12
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (24) = happyShift action_85
action_83 _ = happyFail (happyExpListPerState 83)

action_84 _ = happyReduce_7

action_85 (16) = happyShift action_13
action_85 (17) = happyShift action_14
action_85 (20) = happyShift action_15
action_85 (21) = happyShift action_16
action_85 (23) = happyShift action_17
action_85 (26) = happyShift action_18
action_85 (31) = happyShift action_19
action_85 (37) = happyShift action_20
action_85 (4) = happyGoto action_87
action_85 (5) = happyGoto action_4
action_85 (6) = happyGoto action_5
action_85 (7) = happyGoto action_6
action_85 (8) = happyGoto action_7
action_85 (9) = happyGoto action_8
action_85 (10) = happyGoto action_9
action_85 (11) = happyGoto action_10
action_85 (12) = happyGoto action_11
action_85 (13) = happyGoto action_12
action_85 _ = happyFail (happyExpListPerState 85)

action_86 _ = happyReduce_1

action_87 _ = happyReduce_6

happyReduce_1 = happyReduce 8 4 happyReduction_1
happyReduction_1 ((HappyAbsSyn4  happy_var_8) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn14  happy_var_4) `HappyStk`
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
	(HappyAbsSyn14  happy_var_4) `HappyStk`
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
	(HappyAbsSyn14  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn14  happy_var_4) `HappyStk`
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
	(HappyAbsSyn14  happy_var_4) `HappyStk`
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

happyReduce_9 = happyReduce 6 7 happyReduction_9
happyReduction_9 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (SConditional happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_10 = happySpecReduce_1  7 happyReduction_10
happyReduction_10 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_2  8 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_2)
	(HappyTerminal (TokenLiteral happy_var_1))
	 =  HappyAbsSyn8
		 (SApp (SName happy_var_1) happy_var_2
	)
happyReduction_11 _ _  = notHappyAtAll 

happyReduce_12 = happyReduce 4 8 happyReduction_12
happyReduction_12 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (SApp happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_13 = happySpecReduce_1  8 happyReduction_13
happyReduction_13 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  9 happyReduction_14
happyReduction_14 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (SPlus happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  9 happyReduction_15
happyReduction_15 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn9
		 (SMinus happy_var_1 happy_var_3
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
		 (STimes happy_var_1 happy_var_3
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  10 happyReduction_18
happyReduction_18 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (SDiv happy_var_1 happy_var_3
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
		 (SOr happy_var_1 happy_var_3
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
		 (SAnd happy_var_1 happy_var_3
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  12 happyReduction_23
happyReduction_23 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  13 happyReduction_24
happyReduction_24 _
	(HappyTerminal (TokenString happy_var_2))
	_
	 =  HappyAbsSyn13
		 (SString happy_var_2
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  13 happyReduction_25
happyReduction_25 (HappyTerminal (TokenLiteral happy_var_1))
	 =  HappyAbsSyn13
		 (SName happy_var_1
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  13 happyReduction_26
happyReduction_26 (HappyTerminal (TokenInt happy_var_1))
	 =  HappyAbsSyn13
		 (SInt happy_var_1
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  13 happyReduction_27
happyReduction_27 (HappyTerminal (TokenBool happy_var_1))
	 =  HappyAbsSyn13
		 (SBool happy_var_1
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  13 happyReduction_28
happyReduction_28 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn13
		 (SBrack happy_var_2
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  14 happyReduction_29
happyReduction_29 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn14
		 (STypeFunc happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  14 happyReduction_30
happyReduction_30 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn14
		 (STypeUnion happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  14 happyReduction_31
happyReduction_31 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn14
		 (STypeIntersection happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_1  14 happyReduction_32
happyReduction_32 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn14
		 (happy_var_1
	)
happyReduction_32 _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_1  15 happyReduction_33
happyReduction_33 (HappyTerminal (TokenLiteral happy_var_1))
	 =  HappyAbsSyn15
		 (SType happy_var_1
	)
happyReduction_33 _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_2  15 happyReduction_34
happyReduction_34 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn15
		 (STypeof happy_var_2
	)
happyReduction_34 _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  15 happyReduction_35
happyReduction_35 _
	(HappyAbsSyn14  happy_var_2)
	_
	 =  HappyAbsSyn15
		 (happy_var_2
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 42 42 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenLet -> cont 16;
	TokenType -> cont 17;
	TokenTypeof -> cont 18;
	TokenIn -> cont 19;
	TokenInt happy_dollar_dollar -> cont 20;
	TokenBool happy_dollar_dollar -> cont 21;
	TokenString happy_dollar_dollar -> cont 22;
	TokenLiteral happy_dollar_dollar -> cont 23;
	TokenFatArrow -> cont 24;
	TokenArrow -> cont 25;
	TokenIf -> cont 26;
	TokenThen -> cont 27;
	TokenElse -> cont 28;
	TokenAnd -> cont 29;
	TokenOr -> cont 30;
	TokenQuote -> cont 31;
	TokenEq -> cont 32;
	TokenPlus -> cont 33;
	TokenMinus -> cont 34;
	TokenTimes -> cont 35;
	TokenDiv -> cont 36;
	TokenOB -> cont 37;
	TokenCB -> cont 38;
	TokenColon -> cont 39;
	TokenPipe -> cont 40;
	TokenAmpersand -> cont 41;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 42 tk tks = happyError' (tks, explist)
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
      | SConditional SExpr SExpr SExpr
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
