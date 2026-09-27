# 🧾 Top Ethereum NFTs – ERC721 Token List

A curated and community-driven list of the top Ethereum NFT (ERC-721) collections, formatted according to the Uniswap Token List schema.

📦 This list includes:
- Verified contract addresses of top NFT projects
- Name and Symbol metadata
- Compatible with Ethereum mainnet (chainId 1)

✅ Example Projects:
- Bored Ape Yacht Club  
- Azuki  
- CryptoPunks  
- Pudgy Penguins  
- ENS Domains  
- And more...

📄 Token List File:
➡️ [ethereum-nft-tokenlist.json](./ethereum-nft-tokenlist.json)

🔗 Raw URL (for direct use in dApps and web3 tools):  
https://raw.githubusercontent.com/your-username/your-repo-name/main/ethereum-nft-tokenlist.json  
(Replace with your actual GitHub username and repository name)

📌 Token List Format

This token list conforms to the industry-standard [Token Lists](https://tokenlists.org/) JSON schema. Fields include:

- `chainId`: 1 (Ethereum Mainnet)  
- `address`: The NFT contract address  
- `name`: NFT Collection name  
- `symbol`: Token symbol  

📝 Note: `decimals` field is omitted for ERC721 tokens (not applicable).

🛠️ How to Use This Token List

This list can be used by:

- NFT dashboards  
- DApps (collection pickers, galleries)  
- Wallets  
- Analytics platforms  

Simply fetch the raw URL and parse the JSON.

### 🧪 Example Fetch (JavaScript)

```js
const listURL = 'https://raw.githubusercontent.com/your-username/your-repo-name/main/ethereum-nft-tokenlist.json';
fetch(listURL)
  .then(res => res.json())
  .then(data => {
    console.log(data.tokens); // Array of NFT metadata
  });
