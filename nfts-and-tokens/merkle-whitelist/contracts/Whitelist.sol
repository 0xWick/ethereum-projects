// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

import "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";

contract Whitelist {
    // Variable for storing the MerkleRoot
    bytes32 public merkleRoot;

    // Storing the MerkleRoot in the Contract
    constructor(bytes32 _merkleRoot) {
        merkleRoot = _merkleRoot;
    }

    // @dev: To check if an address is in Whitelist or not
    function checkInWhitelist(
        bytes32[] calldata proof,
        uint64 maxAllowanceToMint
    ) public view returns (bool) {
        // Calculating the Hash of the Leaf node in which the address exist
        bytes32 leaf = keccak256(abi.encode(msg.sender, maxAllowanceToMint));
        // Verifying the Proof
        bool verified = MerkleProof.verify(proof, merkleRoot, leaf);
        return verified;
    }
}
