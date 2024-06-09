// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <=0.9.0;

contract BlockchainMessenger{

    address public owner;
    string public theMessage;
    uint public changeCounter;

    constructor() {
        owner = msg.sender;
    }

    function updateTheMessage(string memory _newMessage) public {
        if (owner == msg.sender) {
            theMessage = _newMessage;
            changeCounter++;
        }
        else if(owner != msg.sender) {
            theMessage = "Failed to sent message!";
        }
    }

}