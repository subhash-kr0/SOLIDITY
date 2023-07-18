// SPDX-License-Identifier: MIT
//SPDX-License-Idetifier: Unlicensed

// Interfaces

// Interfaces are contracts that only contain function signatures and events
// Interfaces are used to define the contract API
// Interfaces are implemented by contracts
// Interfaces are not deployed
// Interfaces are not inherited

pragma solidity >=0.7.0;

interface IERC20 {
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function transfer(address recipient, uint256 amount) external returns (bool);
    function allowance(address owner, address spender) external view returns (uint256);
    function approve(address spender, uint256 amount) external returns (bool);
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
}

interface base {
    function get() external pure returns(uint);
}

contract main is base {
    function get() public pure override returns(uint) {
        return 1;
    }
}