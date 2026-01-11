// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract CounterCode{
    uint public storedValue = 0;
    function set(uint _number) public{
        storedValue = _number;
    }
    function incrementValue() public{
        storedValue++;
    }
    function DecrementValue() public{
        require(storedValue > 0, "Counter: not enough values to decrement");
        storedValue--;
    }
}
