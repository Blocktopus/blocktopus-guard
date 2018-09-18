/*
 * BlocktopusICO: Library that enables payments only from Blocktopus Wallets
 *
 * Copyright 2018 Blocktopus Single Member P.C.
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http:*www.gnu.org/licenses/>.
 *
 * msgSender: 0xE7F6151aB2745Ad4bDa9925c06EEe3C3745A4E74
 * msgData:   ["0x8d","0x97","0x71","0xe7","0x89","0x11","0x23","0x5a","0x35","0x47","0xac","0x86","0x6f","0xd1","0x47","0xdd","0x1f","0x3d","0x7a","0xcd","0x07","0x49","0xa7","0x63","0xee","0x7a","0x8f","0xe5","0x6b","0xae","0x79","0x6d","0x32","0xfa","0x46","0xbb","0x37","0xe8","0xb3","0x19","0x09","0x05","0x56","0x51","0x2a","0xb6","0x8d","0xcf","0x80","0xcc","0x0a","0x1a","0x15","0x2e","0x71","0x66","0xc6","0xe7","0x33","0xbb","0x38","0xfd","0x7f","0xe9","0x1b"]
*/

pragma solidity ^0.4.24;

import './ECRecovery.sol';
import './AddressUtil.sol';

/**
 * @title Blocktopus filter library
 *
 * @dev Checks whether the msgData is the incoming transaction's address signed
 * by the Blocktopus' Private Key.
 */

contract BlocktopusICO is ECRecovery {

using AddressUtil for address;

  modifier BlocktopusTxsOnly() {

      address signer = 0xE7F6151aB2745Ad4bDa9925c06EEe3C3745A4E74;
      bytes32 signature = keccak256("\x19Ethereum Signed Message:\n40", msg.sender.toString());

      require(ECVerify(signature, msg.data, signer));
      _;
  }

  function ECVerify(bytes32 hash, bytes sig, address signer) private pure returns (bool) {
      return signer == ECRecovery.recover(hash, sig);
  }
}
