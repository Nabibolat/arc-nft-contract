# Arc NFT Smart Contract

An ERC-721 standard NFT smart contract deployed on the **ARC Mainnet**.

## Contract Information
* **Contract Address:** `0x38470752ed8B3b9f02061bA2c15dA99abd7878ce`
* **Network:** ARC Mainnet (Chain ID 1243)
* **Standard:** ERC-721 (OpenZeppelin v5.0.0)
* **Verification Status:** Successfully verified on ArcScan

## Repository Structure
* `ArcNFT.sol` — The original clean source code of the contract.
* `ArcNFT_flattened.sol` — The flattened source code containing all OpenZeppelin dependencies, used for the verification process on ArcScan.

## Key Features
* Based on OpenZeppelin's secure and community-vetted implementation.
* Implements `ERC721URIStorage` for flexible individual token metadata handling (IPFS ready).
* Protected by `Ownable` modifier to restrict minting privileges to the deployer.
