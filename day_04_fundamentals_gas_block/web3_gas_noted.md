
# Web Learning Day-04: Gas and Blockchain Fundamentals

## 1. Gas (Computational Cost on Blockchains like Ethereum)
**Date:** **12 January 2026**

Gas is a **unit** that measures the computational work needed to process transactions or execute smart contracts.

- Nodes/validators get paid in the native currency (e.g., ETH) for including your transaction.
- **Why gas exists**: Prevents spam/abuse (e.g., infinite loops) and rewards node operators.
- **Gas used** depends on complexity:
  - Simple ETH transfer: ~21,000 gas
  - Minting NFTs, deploying smart contracts, or DeFi interactions: much higher (tens/hundreds of thousands)
- **Gas price** (in Gwei): Varies with network congestion — busier chain = higher price for faster confirmation.
- Total fee = Gas used × Gas price
- Users set a **gas limit** (max spend); excess is refunded.
- Different chains use different mechanisms (Ethereum: gas; Solana: compute units, etc.).

## 2. Hashing

A hash function turns any input into a **fixed-length, unique string** (digest).

- **Properties**:
  - Deterministic: Same input → always same output
  - One-way: Can't reverse to original data
  - Avalanche effect: Tiny change → completely different hash
- Example using SHA-256 (common, but Ethereum uses **Keccak-256**):

```text
Input: "ahmad"
SHA-256 Hash: 4b4440482b36a212f3c5c1d9c0a0b7557d3753185bd32954e6bb7f4d12846f05
```

- Try it yourself: [Hash Demo](https://andersbrownworth.com/blockchain/hash)
- Ethereum-specific: Uses **Keccak-256** (very similar to SHA-3 but with different padding). Used in addresses, Merkle trees, etc.

## 3. Block

A block bundles data and links to the previous block via hashing.

- Main components:
  - **Previous Block Hash**: Connects to the prior block
  - **Data**: Transactions (or simple text in demos)
  - **Nonce**: Number miners change to find a valid hash
  - **Hash**: SHA-256 (or Keccak-256) of (previous hash + data + nonce + other fields)
- **Mining** → Adjust nonce until hash meets difficulty (e.g., starts with several zeros).
- Interactive demo: [Block Demo](https://andersbrownworth.com/blockchain/block)

## 4. Blockchain

A linked list of blocks where each includes the hash of the previous one → forms an immutable chain.

- **Genesis Block**: First block (usually block 0 or 1). Previous hash = 000... (no real predecessor).
- **Immutability**:
  - Change anything in Block #2 → its hash changes
  - Block #3's "previous hash" no longer matches → its hash changes
  - This cascades to **all subsequent blocks**
  - Tampering requires re-mining the entire chain faster than the honest network (nearly impossible with enough participants).
- Interactive demo: [Blockchain Demo](https://andersbrownworth.com/blockchain/blockchain)

## 5. Mining

Finding a valid nonce so the block hash satisfies the difficulty target (e.g., hash starts with X leading zeros).

- Proof-of-Work (PoW): Computationally intensive trial-and-error.
- Reward: Block reward (new coins) + transaction fees.
- Ethereum switched to Proof-of-Stake (PoS) in 2022 → staking instead of mining.
- Demo shows puzzle-solving: [Block Demo](https://andersbrownworth.com/blockchain/block)

## 6. Distributed Nature

Blockchain runs on many independent nodes/peers (no single point of control).

- Peers A, B, C each maintain their own copy.
- New blocks are broadcast → honest nodes follow the **longest/valid chain** rule (or most-staked in PoS).
- If Peer A tampers (changes history), its chain diverges → Peers B & C reject it during sync because it doesn't match the majority.
- Bad actions on one node **do not affect** honest nodes — consensus protects the network.
- Interactive demo: [Distributed Demo](https://andersbrownworth.com/blockchain/distributed)

## 7. Tokens

Blocks store **transactions** instead of generic data.

- Represents value transfers (e.g., ETH, custom tokens).
- Format: From → To, Amount (shown as $ in demo).
- Balances update across peers after confirmation.
- Interactive demo: [Tokens Demo](https://andersbrownworth.com/blockchain/tokens)

## 8. Coinbase Transaction

Special transaction created by the miner/validator for each new block.

- **Purpose**:
  - Pays the **block reward** (newly minted coins)
  - Collects all **transaction fees** from the block
- No real "from" address (or coinbase special marker).
- How new supply enters circulation (e.g., Bitcoin 6.25 BTC reward halving over time).
- Interactive demo: [Coinbase Demo](https://andersbrownworth.com/blockchain/coinbase)

---

**Quick Recap**  
These concepts connect: Hashing secures blocks → Blocks chain together → Distributed nodes agree → Mining/validators get rewarded via coinbase + gas fees → Tokens move value.