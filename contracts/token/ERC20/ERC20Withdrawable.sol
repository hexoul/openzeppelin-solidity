pragma solidity ^0.5.2;

import "./ERC20.sol";
import "../../access/roles/MinterRole.sol";

/**
 * @title ERC20Withdrawable
 * @dev ERC20 minting logic with withdrawal
 */
contract ERC20Withdrawable is ERC20, MinterRole {
    /**
     * @dev Function to mint tokens
     * @param to The address that will receive the minted tokens.
     * @return A boolean that indicates if the operation was successful.
     */
    function mint(address to) public onlyMinter payable returns (bool) {
        _mint(to, msg.value);
        return true;
    }
}
