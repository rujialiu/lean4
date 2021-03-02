#eval "Nat"
#eval 0x17 &&& 0xf == 0x7
#eval 0x17 ||| 0xf == 0x1f
#eval 0x17 ^^^ 0xf == 0x18
#eval 0x12 <<< 4 == 0x120
#eval 0x12 >>> 4 == 0x1

-- Expected failure
-- #eval 1 ^ (2 ^ 32)

-- Edge case testing
#eval 0 <<< 2^32 == 0

-- Expected failures
--#eval 1 <<< 2^32
--#eval (1 <<< 2^31 <<< 2^31 >>> 2^32)

#eval "UInt8"
#eval 0x117 &&& (0x1ff  : UInt8) == 0x17
#eval 0x17 ||| (0x10f : UInt8) == 0x1f
#eval 0x17 ^^^ (0x10f : UInt8) == 0x18
#eval (0x12 : UInt8) <<< 4 == 0x120
#eval (0x12 : UInt8) >>> 4 == 0x1
#eval ~~~(0x12 : UInt8) == 0xed

#eval "UInt16"
#eval 0x117 &&& (0x101ff  : UInt16) == 0x117
#eval 0x17 ||| (0x1010f : UInt16) == 0x011f
#eval 0x17 ^^^ (0x1010f : UInt16) == 0x0118
#eval (0x12 : UInt16) <<< 4 == 0x120
#eval (0x12 : UInt16) >>> 4 == 0x1
#eval ~~~(0x12 : UInt16) == 0xffed

#eval "UInt32"
#eval 0x117 &&& (0x101ff  : UInt32) == 0x117
#eval 0x17 ||| (0x1010f : UInt32) == 0x1011f
#eval 0x17 ^^^ (0x1010f : UInt32) == 0x10118
#eval (0x12 : UInt32) <<< 4 == 0x120
#eval (0x12 : UInt32) >>> 4 == 0x1
#eval ~~~(0x12 : UInt32) == 0xffffffed

#eval "UInt64"
#eval 0x117 &&& (0x101ff  : UInt64) == 0x117
#eval 0x17 ||| (0x1010f : UInt64) == 0x1011f
#eval 0x17 ^^^ (0x1010f : UInt64) == 0x10118
#eval (0x12 : UInt64) <<< 4 == 0x120
#eval (0x12 : UInt64) >>> 4 == 0x1
#eval ~~~(0x12 : UInt64) == 0xffffffffffffffed

