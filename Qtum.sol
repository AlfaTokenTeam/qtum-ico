pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Qtum is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Qtum(address _owner)  UpgradeableToken(_owner) {
    name = "Qtum";
    symbol = "Qtum";
    totalSupply = 30000000000000000000000000000000;
    decimals = 30;

    balances[_owner] = totalSupply;
  }
}