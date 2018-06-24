pragma solidity ^0.4.23;

/**
 * @title ERC20Token
 * @dev ERC20 token interface
 */
 contract ERC827Token {
    string public name;
    string public symbol;
    uint8 public decimals;
    
    function totalSupply() public constant returns (uint);
    function balanceOf(address tokenOwner) public constant returns (uint balance);
    function allowance(address tokenOwner, address spender) public constant returns (uint remaining);
    function transfer(address to, uint tokens) public returns (bool success);
    function approve(address spender, uint tokens) public returns (bool success);
    function transferFrom(address from, address to, uint tokens) public returns (bool success);

    function approveAndCall(address spender, uint tokens, bytes data) public payable returns (bool success);
    function transferAndCall(address to, uint tokens, bytes data) public payable returns (bool success);
    function transferFromAndCall(address from, address to, uint tokens, bytes data) public payable returns (bool success);

    event Transfer(address indexed from, address indexed to, uint tokens);
    event Approval(address indexed tokenOwner, address indexed spender, uint tokens);
 }
