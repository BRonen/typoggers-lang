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
happyExpList = Happy_Data_Array.listArray (0,310) ([32768,16985,528,2048,0,0,16384,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,49152,0,0,32,0,0,1,0,0,0,0,4,0,16384,0,0,0,0,0,0,0,38912,1061,33,22912,4162,2,512,0,32768,16985,528,8192,4,1,0,0,4,4096,6144,32768,16985,528,0,0,0,16896,4096,0,0,512,32768,16985,592,0,1024,0,0,4,0,0,0,0,32768,0,0,2048,4,22528,4160,2,1408,8452,0,16472,528,32768,1029,33,22528,4160,2,1408,8452,0,0,64,8192,4,1,0,3072,0,0,0,32768,16985,528,0,49152,0,0,32,0,0,2,0,4096,0,0,0,0,22912,4162,2,1056,256,32768,16985,528,0,0,0,16896,4096,0,9624,8452,0,0,32,0,0,0,16896,4096,0,1056,256,0,66,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,512,0,2048,0,16384,0,0,1024,0,0,0,512,0,32768,0,38912,1061,33,0,0,0,9624,8452,32768,16985,528,38912,1061,33,32768,16384,0,9624,8452,0,66,16,0,0,0,0,0,0,0,0,0,4,0,38912,1061,33,32768,0,0,0,0,32768,16985,528,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Expr","TypeDef","FuncDef","Conditional","FuncApp","LowTerm","HighTerm","LowLogicOp","HighLogicOp","Factor","LowTypeNote","HighTypeNote","let","type","typeof","in","int","bool","string","literal","fatarrow","arrow","if","then","else","and","or","'\"'","'='","'+'","'-'","'*'","'/'","'('","')'","':'","'|'","'&'","'<'","'>'","%eof"]
        bit_start = st Prelude.* 44
        bit_end = (st Prelude.+ 1) Prelude.* 44
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..43]
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
action_0 (42) = happyShift action_21
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

action_2 (23) = happyShift action_40
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (44) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_3

action_5 _ = happyReduce_5

action_6 _ = happyReduce_8

action_7 _ = happyReduce_10

action_8 (33) = happyShift action_38
action_8 (34) = happyShift action_39
action_8 _ = happyReduce_13

action_9 (35) = happyShift action_36
action_9 (36) = happyShift action_37
action_9 _ = happyReduce_16

action_10 (30) = happyShift action_35
action_10 _ = happyReduce_19

action_11 (29) = happyShift action_34
action_11 _ = happyReduce_21

action_12 _ = happyReduce_23

action_13 (23) = happyShift action_33
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (23) = happyShift action_32
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
action_17 (42) = happyShift action_21
action_17 (4) = happyGoto action_31
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
action_18 (42) = happyShift action_21
action_18 (4) = happyGoto action_30
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

action_19 (22) = happyShift action_29
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (16) = happyShift action_13
action_20 (17) = happyShift action_14
action_20 (20) = happyShift action_15
action_20 (21) = happyShift action_16
action_20 (23) = happyShift action_28
action_20 (26) = happyShift action_18
action_20 (31) = happyShift action_19
action_20 (37) = happyShift action_20
action_20 (42) = happyShift action_21
action_20 (4) = happyGoto action_27
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

action_21 (18) = happyShift action_24
action_21 (23) = happyShift action_25
action_21 (37) = happyShift action_26
action_21 (14) = happyGoto action_22
action_21 (15) = happyGoto action_23
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (43) = happyShift action_61
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (25) = happyShift action_58
action_23 (40) = happyShift action_59
action_23 (41) = happyShift action_60
action_23 _ = happyReduce_33

action_24 (16) = happyShift action_13
action_24 (17) = happyShift action_14
action_24 (20) = happyShift action_15
action_24 (21) = happyShift action_16
action_24 (23) = happyShift action_17
action_24 (26) = happyShift action_18
action_24 (31) = happyShift action_19
action_24 (37) = happyShift action_20
action_24 (42) = happyShift action_21
action_24 (4) = happyGoto action_57
action_24 (5) = happyGoto action_4
action_24 (6) = happyGoto action_5
action_24 (7) = happyGoto action_6
action_24 (8) = happyGoto action_7
action_24 (9) = happyGoto action_8
action_24 (10) = happyGoto action_9
action_24 (11) = happyGoto action_10
action_24 (12) = happyGoto action_11
action_24 (13) = happyGoto action_12
action_24 _ = happyFail (happyExpListPerState 24)

action_25 _ = happyReduce_34

action_26 (18) = happyShift action_24
action_26 (23) = happyShift action_25
action_26 (37) = happyShift action_26
action_26 (14) = happyGoto action_56
action_26 (15) = happyGoto action_23
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (38) = happyShift action_55
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (16) = happyShift action_13
action_28 (17) = happyShift action_14
action_28 (20) = happyShift action_15
action_28 (21) = happyShift action_16
action_28 (23) = happyShift action_17
action_28 (26) = happyShift action_18
action_28 (31) = happyShift action_19
action_28 (37) = happyShift action_20
action_28 (39) = happyShift action_54
action_28 (42) = happyShift action_21
action_28 (4) = happyGoto action_31
action_28 (5) = happyGoto action_4
action_28 (6) = happyGoto action_5
action_28 (7) = happyGoto action_6
action_28 (8) = happyGoto action_7
action_28 (9) = happyGoto action_8
action_28 (10) = happyGoto action_9
action_28 (11) = happyGoto action_10
action_28 (12) = happyGoto action_11
action_28 (13) = happyGoto action_12
action_28 _ = happyReduce_25

action_29 (31) = happyShift action_53
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (27) = happyShift action_52
action_30 _ = happyFail (happyExpListPerState 30)

action_31 _ = happyReduce_11

action_32 (32) = happyShift action_51
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (32) = happyShift action_50
action_33 (39) = happyShift action_41
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (20) = happyShift action_15
action_34 (21) = happyShift action_16
action_34 (23) = happyShift action_43
action_34 (31) = happyShift action_19
action_34 (37) = happyShift action_44
action_34 (42) = happyShift action_21
action_34 (13) = happyGoto action_49
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (20) = happyShift action_15
action_35 (21) = happyShift action_16
action_35 (23) = happyShift action_43
action_35 (31) = happyShift action_19
action_35 (37) = happyShift action_44
action_35 (42) = happyShift action_21
action_35 (12) = happyGoto action_48
action_35 (13) = happyGoto action_12
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (20) = happyShift action_15
action_36 (21) = happyShift action_16
action_36 (23) = happyShift action_43
action_36 (31) = happyShift action_19
action_36 (37) = happyShift action_44
action_36 (42) = happyShift action_21
action_36 (11) = happyGoto action_47
action_36 (12) = happyGoto action_11
action_36 (13) = happyGoto action_12
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (20) = happyShift action_15
action_37 (21) = happyShift action_16
action_37 (23) = happyShift action_43
action_37 (31) = happyShift action_19
action_37 (37) = happyShift action_44
action_37 (42) = happyShift action_21
action_37 (11) = happyGoto action_46
action_37 (12) = happyGoto action_11
action_37 (13) = happyGoto action_12
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (20) = happyShift action_15
action_38 (21) = happyShift action_16
action_38 (23) = happyShift action_43
action_38 (31) = happyShift action_19
action_38 (37) = happyShift action_44
action_38 (42) = happyShift action_21
action_38 (10) = happyGoto action_45
action_38 (11) = happyGoto action_10
action_38 (12) = happyGoto action_11
action_38 (13) = happyGoto action_12
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (20) = happyShift action_15
action_39 (21) = happyShift action_16
action_39 (23) = happyShift action_43
action_39 (31) = happyShift action_19
action_39 (37) = happyShift action_44
action_39 (42) = happyShift action_21
action_39 (10) = happyGoto action_42
action_39 (11) = happyGoto action_10
action_39 (12) = happyGoto action_11
action_39 (13) = happyGoto action_12
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (39) = happyShift action_41
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (18) = happyShift action_24
action_41 (23) = happyShift action_25
action_41 (37) = happyShift action_26
action_41 (14) = happyGoto action_72
action_41 (15) = happyGoto action_23
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (35) = happyShift action_36
action_42 (36) = happyShift action_37
action_42 _ = happyReduce_15

action_43 _ = happyReduce_25

action_44 (16) = happyShift action_13
action_44 (17) = happyShift action_14
action_44 (20) = happyShift action_15
action_44 (21) = happyShift action_16
action_44 (23) = happyShift action_17
action_44 (26) = happyShift action_18
action_44 (31) = happyShift action_19
action_44 (37) = happyShift action_20
action_44 (42) = happyShift action_21
action_44 (4) = happyGoto action_71
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

action_45 (35) = happyShift action_36
action_45 (36) = happyShift action_37
action_45 _ = happyReduce_14

action_46 (30) = happyShift action_35
action_46 _ = happyReduce_18

action_47 (30) = happyShift action_35
action_47 _ = happyReduce_17

action_48 (29) = happyShift action_34
action_48 _ = happyReduce_20

action_49 _ = happyReduce_22

action_50 (16) = happyShift action_13
action_50 (17) = happyShift action_14
action_50 (20) = happyShift action_15
action_50 (21) = happyShift action_16
action_50 (23) = happyShift action_17
action_50 (26) = happyShift action_18
action_50 (31) = happyShift action_19
action_50 (37) = happyShift action_20
action_50 (42) = happyShift action_21
action_50 (4) = happyGoto action_70
action_50 (5) = happyGoto action_4
action_50 (6) = happyGoto action_5
action_50 (7) = happyGoto action_6
action_50 (8) = happyGoto action_7
action_50 (9) = happyGoto action_8
action_50 (10) = happyGoto action_9
action_50 (11) = happyGoto action_10
action_50 (12) = happyGoto action_11
action_50 (13) = happyGoto action_12
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (18) = happyShift action_24
action_51 (23) = happyShift action_25
action_51 (37) = happyShift action_26
action_51 (14) = happyGoto action_69
action_51 (15) = happyGoto action_23
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (16) = happyShift action_13
action_52 (17) = happyShift action_14
action_52 (20) = happyShift action_15
action_52 (21) = happyShift action_16
action_52 (23) = happyShift action_17
action_52 (26) = happyShift action_18
action_52 (31) = happyShift action_19
action_52 (37) = happyShift action_20
action_52 (42) = happyShift action_21
action_52 (4) = happyGoto action_68
action_52 (5) = happyGoto action_4
action_52 (6) = happyGoto action_5
action_52 (7) = happyGoto action_6
action_52 (8) = happyGoto action_7
action_52 (9) = happyGoto action_8
action_52 (10) = happyGoto action_9
action_52 (11) = happyGoto action_10
action_52 (12) = happyGoto action_11
action_52 (13) = happyGoto action_12
action_52 _ = happyFail (happyExpListPerState 52)

action_53 _ = happyReduce_24

action_54 (18) = happyShift action_24
action_54 (23) = happyShift action_25
action_54 (37) = happyShift action_26
action_54 (14) = happyGoto action_67
action_54 (15) = happyGoto action_23
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (16) = happyShift action_13
action_55 (17) = happyShift action_14
action_55 (20) = happyShift action_15
action_55 (21) = happyShift action_16
action_55 (23) = happyShift action_17
action_55 (26) = happyShift action_18
action_55 (31) = happyShift action_19
action_55 (37) = happyShift action_20
action_55 (42) = happyShift action_21
action_55 (4) = happyGoto action_66
action_55 (5) = happyGoto action_4
action_55 (6) = happyGoto action_5
action_55 (7) = happyGoto action_6
action_55 (8) = happyGoto action_7
action_55 (9) = happyGoto action_8
action_55 (10) = happyGoto action_9
action_55 (11) = happyGoto action_10
action_55 (12) = happyGoto action_11
action_55 (13) = happyGoto action_12
action_55 _ = happyReduce_28

action_56 (38) = happyShift action_65
action_56 _ = happyFail (happyExpListPerState 56)

action_57 _ = happyReduce_35

action_58 (18) = happyShift action_24
action_58 (23) = happyShift action_25
action_58 (37) = happyShift action_26
action_58 (14) = happyGoto action_64
action_58 (15) = happyGoto action_23
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (18) = happyShift action_24
action_59 (23) = happyShift action_25
action_59 (37) = happyShift action_26
action_59 (14) = happyGoto action_63
action_59 (15) = happyGoto action_23
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (18) = happyShift action_24
action_60 (23) = happyShift action_25
action_60 (37) = happyShift action_26
action_60 (14) = happyGoto action_62
action_60 (15) = happyGoto action_23
action_60 _ = happyFail (happyExpListPerState 60)

action_61 _ = happyReduce_29

action_62 _ = happyReduce_32

action_63 _ = happyReduce_31

action_64 _ = happyReduce_30

action_65 _ = happyReduce_36

action_66 _ = happyReduce_12

action_67 (38) = happyShift action_78
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (28) = happyShift action_77
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (19) = happyShift action_76
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (19) = happyShift action_75
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (38) = happyShift action_74
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (32) = happyShift action_73
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (16) = happyShift action_13
action_73 (17) = happyShift action_14
action_73 (20) = happyShift action_15
action_73 (21) = happyShift action_16
action_73 (23) = happyShift action_17
action_73 (26) = happyShift action_18
action_73 (31) = happyShift action_19
action_73 (37) = happyShift action_20
action_73 (42) = happyShift action_21
action_73 (4) = happyGoto action_84
action_73 (5) = happyGoto action_4
action_73 (6) = happyGoto action_5
action_73 (7) = happyGoto action_6
action_73 (8) = happyGoto action_7
action_73 (9) = happyGoto action_8
action_73 (10) = happyGoto action_9
action_73 (11) = happyGoto action_10
action_73 (12) = happyGoto action_11
action_73 (13) = happyGoto action_12
action_73 _ = happyFail (happyExpListPerState 73)

action_74 _ = happyReduce_28

action_75 (16) = happyShift action_13
action_75 (17) = happyShift action_14
action_75 (20) = happyShift action_15
action_75 (21) = happyShift action_16
action_75 (23) = happyShift action_17
action_75 (26) = happyShift action_18
action_75 (31) = happyShift action_19
action_75 (37) = happyShift action_20
action_75 (42) = happyShift action_21
action_75 (4) = happyGoto action_83
action_75 (5) = happyGoto action_4
action_75 (6) = happyGoto action_5
action_75 (7) = happyGoto action_6
action_75 (8) = happyGoto action_7
action_75 (9) = happyGoto action_8
action_75 (10) = happyGoto action_9
action_75 (11) = happyGoto action_10
action_75 (12) = happyGoto action_11
action_75 (13) = happyGoto action_12
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (16) = happyShift action_13
action_76 (17) = happyShift action_14
action_76 (20) = happyShift action_15
action_76 (21) = happyShift action_16
action_76 (23) = happyShift action_17
action_76 (26) = happyShift action_18
action_76 (31) = happyShift action_19
action_76 (37) = happyShift action_20
action_76 (42) = happyShift action_21
action_76 (4) = happyGoto action_82
action_76 (5) = happyGoto action_4
action_76 (6) = happyGoto action_5
action_76 (7) = happyGoto action_6
action_76 (8) = happyGoto action_7
action_76 (9) = happyGoto action_8
action_76 (10) = happyGoto action_9
action_76 (11) = happyGoto action_10
action_76 (12) = happyGoto action_11
action_76 (13) = happyGoto action_12
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (16) = happyShift action_13
action_77 (17) = happyShift action_14
action_77 (20) = happyShift action_15
action_77 (21) = happyShift action_16
action_77 (23) = happyShift action_17
action_77 (26) = happyShift action_18
action_77 (31) = happyShift action_19
action_77 (37) = happyShift action_20
action_77 (42) = happyShift action_21
action_77 (4) = happyGoto action_81
action_77 (5) = happyGoto action_4
action_77 (6) = happyGoto action_5
action_77 (7) = happyGoto action_6
action_77 (8) = happyGoto action_7
action_77 (9) = happyGoto action_8
action_77 (10) = happyGoto action_9
action_77 (11) = happyGoto action_10
action_77 (12) = happyGoto action_11
action_77 (13) = happyGoto action_12
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (24) = happyShift action_79
action_78 (39) = happyShift action_80
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (16) = happyShift action_13
action_79 (17) = happyShift action_14
action_79 (20) = happyShift action_15
action_79 (21) = happyShift action_16
action_79 (23) = happyShift action_17
action_79 (26) = happyShift action_18
action_79 (31) = happyShift action_19
action_79 (37) = happyShift action_20
action_79 (42) = happyShift action_21
action_79 (4) = happyGoto action_87
action_79 (5) = happyGoto action_4
action_79 (6) = happyGoto action_5
action_79 (7) = happyGoto action_6
action_79 (8) = happyGoto action_7
action_79 (9) = happyGoto action_8
action_79 (10) = happyGoto action_9
action_79 (11) = happyGoto action_10
action_79 (12) = happyGoto action_11
action_79 (13) = happyGoto action_12
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (18) = happyShift action_24
action_80 (23) = happyShift action_25
action_80 (37) = happyShift action_26
action_80 (14) = happyGoto action_86
action_80 (15) = happyGoto action_23
action_80 _ = happyFail (happyExpListPerState 80)

action_81 _ = happyReduce_9

action_82 _ = happyReduce_4

action_83 _ = happyReduce_2

action_84 (19) = happyShift action_85
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (16) = happyShift action_13
action_85 (17) = happyShift action_14
action_85 (20) = happyShift action_15
action_85 (21) = happyShift action_16
action_85 (23) = happyShift action_17
action_85 (26) = happyShift action_18
action_85 (31) = happyShift action_19
action_85 (37) = happyShift action_20
action_85 (42) = happyShift action_21
action_85 (4) = happyGoto action_89
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

action_86 (24) = happyShift action_88
action_86 _ = happyFail (happyExpListPerState 86)

action_87 _ = happyReduce_7

action_88 (16) = happyShift action_13
action_88 (17) = happyShift action_14
action_88 (20) = happyShift action_15
action_88 (21) = happyShift action_16
action_88 (23) = happyShift action_17
action_88 (26) = happyShift action_18
action_88 (31) = happyShift action_19
action_88 (37) = happyShift action_20
action_88 (42) = happyShift action_21
action_88 (4) = happyGoto action_90
action_88 (5) = happyGoto action_4
action_88 (6) = happyGoto action_5
action_88 (7) = happyGoto action_6
action_88 (8) = happyGoto action_7
action_88 (9) = happyGoto action_8
action_88 (10) = happyGoto action_9
action_88 (11) = happyGoto action_10
action_88 (12) = happyGoto action_11
action_88 (13) = happyGoto action_12
action_88 _ = happyFail (happyExpListPerState 88)

action_89 _ = happyReduce_1

action_90 _ = happyReduce_6

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

happyReduce_29 = happySpecReduce_3  13 happyReduction_29
happyReduction_29 _
	(HappyAbsSyn14  happy_var_2)
	_
	 =  HappyAbsSyn13
		 (happy_var_2
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  14 happyReduction_30
happyReduction_30 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn14
		 (STypeFunc happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  14 happyReduction_31
happyReduction_31 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn14
		 (STypeUnion happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  14 happyReduction_32
happyReduction_32 (HappyAbsSyn14  happy_var_3)
	_
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn14
		 (STypeIntersection happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_1  14 happyReduction_33
happyReduction_33 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn14
		 (happy_var_1
	)
happyReduction_33 _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_1  15 happyReduction_34
happyReduction_34 (HappyTerminal (TokenLiteral happy_var_1))
	 =  HappyAbsSyn15
		 (SType happy_var_1
	)
happyReduction_34 _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_2  15 happyReduction_35
happyReduction_35 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn15
		 (STypeof happy_var_2
	)
happyReduction_35 _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  15 happyReduction_36
happyReduction_36 _
	(HappyAbsSyn14  happy_var_2)
	_
	 =  HappyAbsSyn15
		 (happy_var_2
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 44 44 notHappyAtAll (HappyState action) sts stk []

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
	TokenLT -> cont 42;
	TokenGT -> cont 43;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 44 tk tks = happyError' (tks, explist)
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
