// SPDX-License-Identifier: MIT
//SPDX-License-Idetifier: Unlicensed

// Units

//assert(1 wei == 1)
//assert(1 ether == 1e18 wei)
//assert(1 szabo == 1e12)
//assert(1 finney == 1e15)
//assert(2 ether == 2000 fenny)

//Time Units
//assert(1 seconds == 1)
//assert(1 minutes == 60 seconds)
//assert(1 hours == 60 minutes)
//assert(1 days == 24 hours)
//assert(1 weeks == 7 days)


pragma solidity >=0.7.0;

contract units {
    modifier amount {
    require(msg.value > 1 ether);
    _;

    }

    function send() public payable amount {

    }
    
}

//time unit

contract time {
    function f() public view {
        uint x = block.timestamp;
        uint y = block.number;
        uint z = block.difficulty;
        address a = block.coinbase;
    }

    function g() public view {
        uint x = block.timestamp;
        assert(x + 1 minutes > x);
    }

    function h() public view {
        uint x = block.timestamp;
        assert(x + 1 minutes > x);
    }
}