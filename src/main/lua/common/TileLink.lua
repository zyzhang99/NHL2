local utils = require "LuaUtils"
local tonumber = tonumber

local TLChannel = utils.enum_define {
    name = "TLChannel",

    ChannelA = tonumber("0b001"),
    ChannelB = tonumber("0b010"),
    ChannelC = tonumber("0b100"),
}

local TLParam = utils.enum_define {
    name = "TLParam",

    -- Cap
    toT = 0,
    toB = 1,
    toN = 2,

    -- Grow
    NtoB = 0,
    NtoT = 1,
    BtoT = 2,

    -- Shrink
    TtoB = 0,
    TtoN = 1,
    BtoN = 2,

    -- Report
    TtoT = 3,
    BtoB = 4,
    NtoN = 5
}


local MixedState = utils.enum_define {
    name = "MixedState",

    I   = tonumber("0000", 2),
    BC  = tonumber("0100", 2),
    BD  = tonumber("0101", 2),
    BBC = tonumber("0110", 2),
    BBD = tonumber("0111", 2),
    TTC = tonumber("1010", 2),
    TTD = tonumber("1011", 2),
    TC  = tonumber("1100", 2),
    TD  = tonumber("1101", 2),
}

local TLOpcodeA = utils.enum_define {
    name = "TLOpcodeA",
    Get = 4,
    AcquireBlock = 6,
    AcquirePerm = 7,
}

local TLOpcodeB = utils.enum_define {
    name = "TLOpcodeB",
    Probe = 6,
}

local TLOpcodeC = utils.enum_define {
    name = "TLOpcodeC",
    Release = 6,
    ReleaseData = 7,
    ProbeAck = 4,
    ProbeAckData = 5,
}

local TLOpcodeD = utils.enum_define {
    name = "TLOpcodeD",
    AccessAck = 0,
    AccessAckData = 1,
    HintAck = 2,
    Grant = 4,
    GrantData = 5,
    ReleaseAck = 6,
}

local TLOpcodeE = utils.enum_define {
    name = "TLOpcodeE",
    GrantAck = 0,
}

return {
    TLChannel = TLChannel,
    TLParam = TLParam,
    MixedState = MixedState,
    TLOpcodeA = TLOpcodeA,
    TLOpcodeB = TLOpcodeB,
    TLOpcodeC = TLOpcodeC,
    TLOpcodeD = TLOpcodeD,
    TLOpcodeE = TLOpcodeE,
}