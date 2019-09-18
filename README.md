![](https://www.dropbox.com/s/2mm5509701819iv/Blocktopus_logo-hot_purple.png?raw=1)

# Blocktopus Guard Solidity Library
The Solidity library that protects Dapps from receiving Ether from wallets that have not been KYC'd by the [Blocktopus](https://blocktopus.io) platform.

## How to use it

In your DApp's Smart Contract, inherit the BlocktopusGuarded contract and apply the BlocktopusOnly modifier at your payable function that is accepting the funds.

Then the modifier will automatically reject any payments that are not originating from a KYC'd [Blocktopus](https://blocktopus.io) wallet.

![sample](./images/sample.png?dl=1)
