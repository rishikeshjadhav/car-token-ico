pragma solidity ^0.4.23;

import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol";
import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/DetailedERC20.sol";
import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/BurnableToken.sol";


contract CarToken is StandardToken, DetailedERC20, BurnableToken  {
    using SafeMath for uint;

    constructor(
        string name,
        string symbol,
        uint8 decimals,
        uint256 totalSupply
    ) public
    DetailedERC20(name, symbol, decimals) {
        totalSupply_ = totalSupply;
        balances[msg.sender] = totalSupply_;
    }
}