# Ethereum projects

Smart contracts and dapps across DeFi, security, NFTs, governance and infrastructure, built with Solidity, Hardhat, Brownie and Next.js. Each project lives in its own folder with its own README, and its original commit history is kept.

Larger standalone projects have their own repos: [Warden](https://github.com/0xWick/umarkhatana) (an AI agent guarding an on-chain vault), [Decentralized Kameti](https://github.com/0xWick/Kameti) (Chainlink Fall '22 prize winner) and [Shadow DAO](https://github.com/0xWick/Shadow-DAO) (a DAO gated by zero-knowledge proofs).

## DeFi

| Project | What it is | Live |
|---|---|---|
| [`zoom-v1-dex`](defi/zoom-v1-dex) | A DEX on the Uniswap V1 design: a factory of constant-product ETH/token pools, LP tokens earning a 1% fee, slippage limits and token-to-token swaps routed through ETH. 25 Hardhat tests. | |
| [`crypto-devs-exchange`](defi/crypto-devs-exchange) | A Uniswap V1-style exchange for the Crypto Devs token, with a Next.js app for swapping and managing liquidity. | [app](https://defi-exchange-seven.vercel.app) |
| [`staking`](defi/staking) | Staking with hourly rewards, claims and an owner-set reward rate, plus a fee-on-transfer (tax) token. | |
| [`flash-loans`](defi/flash-loans) | An Aave V3 flash loan: borrow with no collateral, use the funds and repay within a single transaction. | |
| [`token-ico`](defi/token-ico) | An ERC-20 token sale: NFT holders claim tokens for free, everyone else mints at a fixed price, with a Next.js app. | [app](https://ico-dapp-ecru.vercel.app) |

## Security

Each project pairs a vulnerable contract with an attacker contract and a test that proves the exploit.

| Project | The attack |
|---|---|
| [`reentrancy`](security/reentrancy) | An attacker re-enters `withdraw` from its fallback before the balance is updated, and drains the contract. |
| [`denial-of-service`](security/denial-of-service) | A contract that refuses ETH blocks a push-payment auction forever. |
| [`delegatecall`](security/delegatecall) | A storage-layout mismatch through `delegatecall` lets an attacker overwrite the owner. |
| [`private-data`](security/private-data) | `private` variables read straight from storage slots: nothing on a public chain is secret. |
| [`insecure-randomness`](security/insecure-randomness) | Randomness built from block data is predicted by an attacking contract in the same transaction. |

## NFTs and tokens

| Project | What it is | Live |
|---|---|---|
| [`crypto-devs-nft`](nfts-and-tokens/crypto-devs-nft) | An NFT collection with a whitelist presale and a public sale: contracts and a Next.js mint app. | [app](https://nft-dapp-front.vercel.app) |
| [`ipfs-nft`](nfts-and-tokens/ipfs-nft) | The LW3Punks collection, with images and metadata stored on IPFS through Pinata. | [app](https://ipfs-nft-dapp-six.vercel.app) |
| [`whitelist`](nfts-and-tokens/whitelist) | A whitelist sign-up dapp for an NFT presale. | [app](https://whitelist-dapp-indol.vercel.app) |
| [`merkle-whitelist`](nfts-and-tokens/merkle-whitelist) | A gas-efficient whitelist: store one Merkle root, verify members with proofs. | |
| [`erc721`](nfts-and-tokens/erc721) | An ERC-721 collection with Hardhat tests. | |
| [`erc20-token`](nfts-and-tokens/erc20-token) | A minimal OpenZeppelin ERC-20. | |
| [`nft-token-list`](nfts-and-tokens/nft-token-list) | Curated token lists in the Uniswap Token List format: top Ethereum NFT collections and Arbitrum ERC-20s. | |

## Governance

| Project | What it is | Live |
|---|---|---|
| [`crypto-devs-dao`](governance/crypto-devs-dao) | A DAO for NFT holders: create proposals to buy NFTs from a marketplace, vote with your NFTs, and execute passed proposals. | [app](https://dao-dapp-psi.vercel.app) |

## Infrastructure

| Project | What it is | Live |
|---|---|---|
| [`chainlink-vrf-game`](infrastructure/chainlink-vrf-game) | A random-winner game on Polygon that picks the winner with Chainlink VRF. | |
| [`the-graph`](infrastructure/the-graph) | A subgraph that indexes the game's events so the frontend queries them with GraphQL. | |
| [`ens`](infrastructure/ens) | A dapp that looks up and greets the connected wallet by its ENS name. | [app](https://ens-ten.vercel.app) |
| [`mempool-watcher`](infrastructure/mempool-watcher) | A Node.js script that streams pending mainnet transactions from Geth over WebSockets. | |

## Apps

| Project | What it is |
|---|---|
| [`shadow-network`](apps/shadow-network) | A decentralized social network of token-gated communities on the Filecoin Virtual Machine: soulbound membership NFTs, posts, comments, votes and Push Protocol notifications. |
| [`mood-dapp`](apps/mood-dapp) | A minimal dapp: set and read a mood on-chain from a plain HTML and JavaScript page. |

## Foundations

| Project | What it is |
|---|---|
| [`speedrun-ethereum`](foundations/speedrun-ethereum) | Solutions to the SpeedrunEthereum challenges. |
| [`solidity-practice`](foundations/solidity-practice) | Solidity and web3.py projects: storage, deployment and contract interaction from Python. |
| [`brownie-simple-storage`](foundations/brownie-simple-storage) | A storage contract deployed and tested with the Brownie framework. |

## Running a project

Every folder is self-contained. For the Hardhat projects:

```bash
cd defi/zoom-v1-dex
npm install
npx hardhat test
```

Apps with a frontend keep it in a subfolder (for example `defi/crypto-devs-exchange/dex-app`) and start with `npm install && npm run dev`.
