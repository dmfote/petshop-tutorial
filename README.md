# petshop-tutorial
Truffle Petshop tutorial for the HR/CELA Blokchain Workshop.

### Pre-requisites to be downloaded:
•	VSCode: https://code.visualstudio.com/

•	Node JS: https://nodejs.org/dist/v10.15.3/node-v10.15.3-x64.msi 

•	Git Bash: https://git-scm.com/download/win 

•	Metamask Chrome / Firefox extension: https://metamask.io/ 
  a.	Add the extension to your browser

•	Ganache: https://github.com/trufflesuite/ganache/releases/download/v2.0.0/Ganache-2.0.0.appx

#### Install Windows Build Tools from Powershell (Admin) ####
```npm install --global windows-build-tools```



#### Steps to fill out Adoption.sol
Go in the contracts folder, open Adoption.sol with VS Code.

1) Add skeleton code for the file, defining the solidity version and contract name
```
pragma solidity ^0.5.0;

contract Adoption {
    address[16] public adopters;

}
```

2) Add a function which will allow users to make adoption requests
```
// Adopting a pet
function adopt(uint petId) public returns (uint) {
  require(petId >= 0 && petId <= 15);

  adopters[petId] = msg.sender;

  return petId;
}
```

3) Add another function which can retrieve the adopters
```
// Retrieving the adopters
function getAdopters() public view returns (address[16] memory) {
  return adopters;
}
```


Once these changes are implemented, your smart contract is ready. We will move onto compiling and migrating the contract.

1) ``` truffle compile ``` : Will compile all the contracts
2) Start Ganache on your machine - it will connect to localhost port 7545
3) ``` truffle migrate ``` : Will migrate the compiled contracts to the blockchain
