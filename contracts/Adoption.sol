pragma solidity ^0.5.11;


contract Adoption {

    address[16] public adopters;
    event PetAdopted(address _owner, uint _petId, uint timestamp);
    // Adopting a pet
    function adopt(uint petId) public returns (uint) {
        require(petId >= 0 && petId <= 15, 'Not withing 0-15 range');
        adopters[petId] = msg.sender;
        emit PetAdopted(msg.sender, petId, block.timestamp);
        return petId;
    }

    // Retrieving the adopters
    function getAdopters() public view returns (address[16] memory) {
        return adopters;
    }

}