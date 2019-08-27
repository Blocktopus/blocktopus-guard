# Blocktopus Sample Crowdsale

The Solidity library that enables Token Sales to automate their KYC process by using the [Blocktopus](https://blocktopus.io) platform.

## How to use it

In your Token Sale's Smart Contract, inherit the BlocktopusGuarded contract and apply the BlocktopusOnly modifier at your payable function that is accepting the funds.

Then the modifier will automatically reject any payments that are not originating from a KYC'd [Blocktopus](https://blocktopus.io) wallet.

![sample](./images/sample.png?dl=1)
