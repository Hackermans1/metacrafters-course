// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/*
       REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
*/

//variables to store the details about your coin (Token Name, Token Abbrv., Total Supply)

uint public totalSupply = 1000000;
string public name = "MetaKoin";
string public symbol = "MTK";

//mapping to store the balance of each address

mapping(address => uint) public balance;
//mint function with parameters (address, amount) to mint coins
function mint(address _addr, uint _amount) public {
    balance[_addr] += _amount;
}

//burn function with parameters (address, amount) to burn coins
function burn(address _addr, uint _amount) public {
//check if the balance of the address is greater than the amount to be burned
if (balance[_addr] < _amount) return "Insufficient Balance";   
    balance[_addr] -= _amount;
}