# S4FE AG (S4F) coin | network | crowdsale
> S4FE is the world’s first blockchain technology based global database for the registration and identification of stolen or lost items. The database is accessible to everyone and enables users to register and search property on the blockchain. Such property could be electronic devices, jewelry, collections, valuables of any kind, documents, sports and hobby equipment, vehicles and machines or nearly any conceivable item representing a value to its owner.

<br>
<br>

<p align="center">
  <img src="https://s4fe.io/assets/images/s4fe_logo_004-black.png">
</p>

### Technical Definition
S4F is a ERC20-compliant token derived from the OpenZeppelin StandardToken

## Contracts
**Token**:
  * [S4FE.sol](/contracts/S4FE.sol): Core token logic implementing StandardToken functionality

## Technology
| software      | version       | purpose  |
| ------------- |:-------------:| -----:|
| [ethereum](https://github.com/ethereum "ethereum")    | => 1.8.12 | prod |
| [ganache cli](https://github.com/trufflesuite/ganache-cli) |  => 6.1.0 | dev |
| [solidity](https://github.com/ethereum/solidity "solidity") | => 0.4.2 | dev, prod |
| [nodejs](https://github.com/nodejs "nodejs")    | => 8.10.0 | dev, prod |
| [truffle](https://github.com/trufflesuite/truffle "truffle")    | => 4.1.7    | dev, prod |
| [zeppelin-solidity](https://github.com/OpenZeppelin/zeppelin-solidity "zeppelin-solidity")    | =>  1.7.0    | dev |

## Development

### Prerequisites

To run our smart-contract tests you need to have [truffle](https://github.com/trufflesuite/truffle) installed on your machine. 

```shell
npm install -g truffle
git clone https://gitlab.com/s4feio/contracts.git s4fe-contracts && cd s4fe-contracts
npm install
```

### Testing

Our tests are written in javascript [here](/test). You can run tests with following commands:

```
truffle test
```

## Licensing

standard MIT license
