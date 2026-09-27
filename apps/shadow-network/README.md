# Shadow Network

A decentralized social network of token-gated communities, built for the **FVM Space Warp** hackathon. Each community, a *syndicate*, issues its own soulbound membership NFT. Members post, comment and vote, and every piece of content lives on-chain or on IPFS.

## How it works

- **Create a syndicate.** `createSyndicate` deploys a new ERC-721 membership contract for the community, mints the first membership to its creator, and records the syndicate's name, description and IPFS image.
- **Soulbound memberships.** Membership NFTs can be minted but never transferred, so a seat in a syndicate can't be bought or sold. The creator adds members by minting them a membership.
- **Join.** `joinSyndicate` checks the caller holds that syndicate's NFT before letting them in.
- **Post.** Members publish text posts, optionally with an image stored on IPFS, and can mark them as spoilers. Posts belong to a syndicate.
- **Discuss and vote.** Comments attach to posts. Up and down votes are counted per post, and each user's totals (posts, upvotes, downvotes) build an on-chain reputation.
- **Notifications.** `MainWithPush.sol` adds Push Protocol: each syndicate gets a notification channel, and new members receive a "Welcome to <syndicate>" notification when they're added.

Every action emits an event (`EventCreateSyndicate`, `EventJoinSyndicate`, `PostCreated`, `PostUpvotes`, `PostDownvotes`, `CommentAdded`), so a frontend can index the whole network.

## Contracts

| File | |
|---|---|
| [`contracts/MainContract.sol`](contracts/MainContract.sol) | Syndicates, soulbound membership NFTs, posts, comments, votes and reputation |
| [`contracts/MainWithPush.sol`](contracts/MainWithPush.sol) | The same network with Push Protocol notifications for new members |

## Tech

Solidity · Hardhat · OpenZeppelin ERC-721 · Filecoin Virtual Machine · IPFS · Push Protocol

## Run it

```bash
npm install
npx hardhat compile
npx hardhat run scripts/deploy.js
```
