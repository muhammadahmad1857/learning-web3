# 📘 Web3 Learning Notes — Day 5

## Learned how gas price actually measured and how transactions are signed and verified

**Date:** **13 January 2026**

---

### 1. Transaction Signing & Security
- **Private Key** — Acts as the "password" to authorize and sign transactions. It's a secret random number.
- Ethereum uses **Elliptic Curve Digital Signature Algorithm (ECDSA)** (specifically secp256k1 curve) to generate keys and sign messages/transactions.
- **Key Generation Flow**:
  - Private Key → (via elliptic curve multiplication) → Public Key
  - Public Key → (hashed, usually Keccak-256, then take last 20 bytes) → Ethereum Address (0x...)
- **Signing Process**:
  - You sign the transaction data (or message) with your **private key** to produce a **signature**.
  - The signature proves ownership without revealing the private key.
- **Verification**:
  - Anyone can verify the transaction using your **public key** + the signature + the transaction data.
  - If the public key, transaction data, and signature match correctly → valid (transaction accepted).
  - If signature is wrong/incorrect → verification fails → transaction rejected (error).
- **Security Implication**:
  - Anyone with your private key can sign and broadcast **any transaction** on your behalf (transfer funds, interact with contracts, etc.).
  - Never share your private key!
- Interactive Demo References (from Anders Brownworth):
  - Key generation: https://andersbrownworth.com/blockchain/public-private-keys/keys (shows private → public derivation via ECDSA).
  - Signatures: https://andersbrownworth.com/blockchain/public-private-keys/signatures (demonstrates signing and public key verification).
  - Transaction view: https://andersbrownworth.com/blockchain/public-private-keys/transaction (lets you experiment with signing/verifying transactions; wrong signature → fails).

### 2. Gas Basics
- **Gas** — Unit of measurement for computational effort required to execute operations on Ethereum.
- Every transaction/smart contract interaction consumes **gas** (e.g., simple ETH transfer ≈ 21,000 gas; complex contract calls use more).
- **Gas Price** — Cost per unit of gas (paid in ETH).
- Total fee = Gas Used × Gas Price.
- Gas fees fluctuate based on network congestion (more active users → higher demand for block space → higher fees).
- **Gas Limit** — Maximum gas you're willing to allow for a transaction (set by sender). Protects against infinite loops or unexpected high computation.
  - If actual gas used > gas limit → transaction fails (but you still pay for gas consumed up to failure).
  - If gas used < gas limit → unused gas refunded (post-London upgrade behavior).

### 3. EIP-1559 Fee Mechanism (Post-London Hard Fork, 2021)
- Replaced the old "first-price auction" model with a more predictable system.
- Key components:
  - **Base Fee** (per gas) — Automatically calculated by the network based on previous block usage vs. target block size.
    - Adjusts dynamically: increases (up to 12.5% per block) when blocks > target size; decreases when < target.
    - Minimum price needed for inclusion → always burned (removed from circulation).
  - **Max Priority Fee** (per gas), also called "tip" — Optional extra you pay to validators/miners (post-Merge) to prioritize your transaction faster.
  - **Max Fee** (per gas) — Maximum total you're willing to pay per gas (set by user/wallet).
- **Total Fee Calculation** (for Type 2 transactions):
  - Effective Gas Price = Base Fee + Max Priority Fee (capped by Max Fee).
  - Total fee = Gas Used × Effective Gas Price.
  - If Max Fee > Base Fee + Priority Fee → refund the difference.
- **Fee Distribution**:
  - **Burned** = Base Fee × Gas Used → permanently removed from ETH supply (deflationary pressure).
  - **To Validator/Miner** = Priority Fee (tip) × Gas Used.
- Benefits: More predictable fees, reduces overbidding, burns ETH to make supply scarcer over time.

### 4. Units: Wei & Gwei
- **Wei** — Smallest unit of ETH (like satoshis in Bitcoin).
  - 1 ETH = 10¹⁸ Wei = 1,000,000,000,000,000,000 Wei (1e18 in scientific notation).
- **Gwei** — Commonly used for gas prices (giga-wei).
  - 1 Gwei = 10⁹ Wei = 1,000,000,000 Wei.
  - 1 ETH = 1,000,000,000 Gwei (1e9 Gwei).
- Gas prices are almost always quoted in **Gwei** (e.g., 20 Gwei) because full ETH amounts would be tiny decimals.

### 5. Burn Mechanism Summary
- **Burned Amount** = Base Fee (in Gwei or ETH) × Gas Used.
- This ETH is destroyed forever → reduces circulating supply.
- Amount to validator = Total fee paid - Burned amount = Priority Fee × Gas Used.
- Long-term effect: ETH becomes potentially deflationary when network activity is high (more burning than issuance).
