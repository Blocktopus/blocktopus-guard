# BlocktopusICO
The solidity library that enables ICOs to automate KYC by using the Blocktopus platform

## How to use it

In your ICO's Smart Contract, inherit the BlocktopusICO Contract and apply the
BlocktopusTxwOnly modified at your payable function that is accepting the funds.
Then the modifier will automatically revert any payments that are not originating from
[Blocktopus](https://blocktopus.io).

### Inherit BlocktopusICO

![inherit](https://github.com/Blocktopus/BlocktopusICO/blob/master/example/readme-imgs/ico.png)

### Apply modifier

![modifier](https://github.com/Blocktopus/BlocktopusICO/blob/master/example/readme-imgs/modifier.png)

You can see an example ICO using the Blocktopus modifier in [/example/ETHZCrowdsale.sol](https://github.com/Blocktopus/BlocktopusICO/blob/master/example/ETHZCrowdsale.sol).
