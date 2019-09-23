![](https://www.dropbox.com/s/2mm5509701819iv/Blocktopus_logo-hot_purple.png?raw=1)

# Blocktopus Guard Solidity Library
The Solidity library that protects DApps from receiving Ether from wallets that have not been verified by the [Blocktopus](https://blocktopus.io) platform.

⚠️ **Don't forget to perform an audit on your Smart Contract since any bug can lead to catastrophic failures such as loss of the contract's funds** ⚠️

The [BlocktopusGuard](https://github.com/Blocktopus/blocktopus-guard) Solidity library was audited by [Dedaub](https://www.dedaub.com/) on the 20th of September 2019.

![](https://www.dropbox.com/s/oe4fxsdrm48u9yg/Screenshot%202019-09-23%20at%2018.37.37.png?raw=1)

## How to use it

In your DApp's Smart Contract, inherit the [BlocktopusGuarded](https://github.com/Blocktopus/blocktopus-guard/blob/master/BlocktopusGuard.sol) contract and apply the BlocktopusOnly modifier at your payable function that is accepting the funds.

Then the modifier will automatically reject any payments that are not originating from a KYC'd [Blocktopus](https://blocktopus.io) wallet.

![](https://www.dropbox.com/s/71hvrn5xk07qu9m/Screenshot%202019-09-23%20at%2018.54.02.png?raw=1)
