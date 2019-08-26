# BlocktopusICO
The solidity library that enables ICOs to automate KYC by using the Blocktopus platform

## How to use it

In your Token Sale's Smart Contract, inherit the BlocktopusGuarded contract and apply the BlocktopusOnly modifier at your payable function that is accepting the funds.

Then the modifier will automatically reject any payments that are not originating from a KYC'd [Blocktopus](https://blocktopus.io) wallet.


![sample](https://www.dropbox.com/s/pmqmey9lsvgsv9b/sample.png?dl=1)
