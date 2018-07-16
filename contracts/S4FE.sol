pragma solidity ^0.4.18;

import "zeppelin-solidity/contracts/token/ERC20/StandardToken.sol";
import "zeppelin-solidity/contracts/ownership/Ownable.sol";

/**
 * @title S4FE
 * @dev ERC20 Token, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer`
 */
contract S4FE is Ownable, StandardToken {

	string public constant name = "S4FE";
	string public constant symbol = "S4F";
	uint8 public constant decimals = 18;

	uint256 public constant INITIAL_SUPPLY = 1000000000 * (10 ** uint256(decimals));

	bool public transferLocked = false;
	mapping (address => bool) public transferWhitelist;

	/**
	 * @dev Constructor that gives msg.sender all of existing tokens.
	 */
	function S4FE() public {
		totalSupply_ = INITIAL_SUPPLY;
		balances[msg.sender] = INITIAL_SUPPLY;
		Transfer(0x0, msg.sender, INITIAL_SUPPLY);
	}

	/**
	* @dev if ether is sent to this address, send it back.
	*/
	function () public {
		revert();
	}

	/**
	 * @dev transfer token for a specified address
	 * @param _to The address to transfer to.
	 * @param _value The amount to be transferred.
	 */
	function transfer(address _to, uint256 _value) public returns (bool) {
		require(msg.sender == owner || transferLocked == false || transferWhitelist[msg.sender] == true);

		bool result = super.transfer(_to , _value);
		return result;
	}

	/**
	 * @dev transfer lock status
	 * @param _transferLocked Boolean indicating if transfer is locked
	 */
	function setTransferLocked(bool _transferLocked) onlyOwner public returns (bool) {
		transferLocked = _transferLocked;
		return transferLocked;
	}

	/**
	 * @dev transfer lock status
	 * @param _address Address of account indicating if allowed
	 * @param _transferLocked Boolean indicating if transfer is locked
	 */
	function setTransferWhitelist(address _address, bool _transferLocked) onlyOwner public returns (bool) {
		transferWhitelist[_address] = _transferLocked;
		return _transferLocked;
	}
}

