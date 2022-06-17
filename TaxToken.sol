// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract TaxToken is ERC20 {

    address payable target;

    constructor(string memory _name, string memory _symbol) ERC20(_name, _symbol) {
        target = payable(msg.sender);
        _mint(msg.sender, 100 * 10 ** 18);
    }

    // give mint 100 tokens for yourself
    function freeMoney() public {
        _mint(msg.sender, 100 * 10 ** 18);
    }

    // destroy 100 tokens in your wallet
    function setFire() public {
        _burn(msg.sender, 100 * 10 ** 18);
    }

    function transfer(address _to, uint _value) public override returns (bool success) {
        
        // calculate the share of tokens for your target address
        uint shareForX = _value/100;

        super._transfer(msg.sender, _to, _value-shareForX);
        super._transfer(msg.sender, target, shareForX);
        
        return true;
    }
}
