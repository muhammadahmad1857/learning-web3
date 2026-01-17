# 📘 Web3 Learning Notes — Day 3

## Making My First Transaction (EVM)

**Date:** **9 January 2026**

---

## 🌐 Overview

Today’s focus was understanding how a **basic blockchain transaction** works on an **EVM-based network**.

The goal was not smart contracts yet, but:

- Setting up a wallet correctly
- Receiving testnet tokens from a faucet
- Verifying the transaction using a block explorer

This process is **fundamental** and applies to **all EVM-compatible blockchains** (Ethereum, Polygon, Optimism, Arbitrum, etc.).

---

## 🔐 Wallet Setup

I used **MetaMask** as my wallet.

### Setup process:

- Installed MetaMask browser extension
- Created a new wallet
- Set a strong password

### Wallet security concepts:

- **Secret Recovery Phrase (Seed Phrase)**
  - 12-word phrase generated during wallet creation
  - Gives full access to the wallet
  - If lost → wallet cannot be recovered
  - If leaked → funds can be stolen
- **Private Key**
  - Used to sign transactions
  - Unique per account
  - Must never be shared
- **Public Address**
  - Shown at the top of MetaMask
  - Used to receive tokens
  - Safe to share

---

## 🌐 Blockchain Networks

### Mainnet

- Real blockchain
- Uses real money
- Mistakes cost real funds

### Testnet

- Used for development and testing
- Uses free test tokens
- Same transaction behavior as mainnet (gas, fees, EVM execution)

For learning purposes, I used **testnet** exclusively.

---

## 🧪 Sepolia Testnet

I switched my wallet to **Sepolia Testnet**.

Sepolia is:

- Actively supported by Ethereum core team
- Commonly used for testing in 2026
- Suitable for developers learning Ethereum and EVM-compatible chains

To add Sepolia to MetaMask (if not already there):
- Network Name: Sepolia Test Network
- RPC URL: https://rpc.sepolia.org (or use Alchemy/Infura)
- Chain ID: 11155111
- Currency Symbol: ETH
- Block Explorer: https://sepolia.etherscan.io

---

## 💧 Receiving Tokens from a Faucet

I used the **Alchemy Sepolia Faucet**[](https://www.alchemy.com/faucets/ethereum-sepolia) because it has minimal barriers and no strict "hold real ETH" requirement for basic use (eligibility checks mainnet activity/balance to prevent abuse, but many beginners succeed without issues).

### Why Alchemy?
- Provides **0.1 Sepolia ETH** per request
- Daily limit: 1 request every 24 hours
- No captcha, no social login, no wallet connection — just paste your address
- Fast and reliable for testnet testing

### Steps:

1. Go to: https://www.alchemy.com/faucets/ethereum-sepolia
2. Select **Ethereum Sepolia** (if not auto-selected)
3. Paste your **MetaMask Sepolia wallet address**
4. Click **Send Me ETH** (or similar button)
5. Wait a few moments — faucet sends 0.1 testnet ETH to your address

**Note**: Tokens may take a short time to arrive due to network conditions. If ineligible (rare for new wallets), alternatives like QuickNode, Chainlink, or Nebulum faucets can be tried.

This faucet transaction is a **real blockchain transaction** on Sepolia — just with free test tokens.

---

## 🔍 Verifying the Transaction (Block Explorer)

After receiving ETH, I verified the transaction using a block explorer.

I used **Sepolia Etherscan**[](https://sepolia.etherscan.io).

### Verification process:

1. Open https://sepolia.etherscan.io
2. Paste my **wallet address** in the search bar
3. View:
   - Incoming transaction from the faucet address
   - **Transaction hash** (TxID)
   - Block number
   - Status (**Success**)
   - Gas used & fee
   - Timestamp

This confirmed that:

- The faucet successfully sent testnet ETH
- My wallet address exists on-chain
- Transactions are **publicly verifiable** by anyone
- The blockchain records everything immutably

---

## 🧠 Key Learnings

- Wallets do **not** store funds — the **blockchain** does (your wallet just holds keys)
- Faucets send **real transactions** on test networks (same mechanics as mainnet)
- Every transaction includes:
  - Sender
  - Receiver
  - Value (amount)
  - Gas fee
  - Transaction hash (unique ID)
- Block explorers are essential tools — treat them like a "blockchain Google"
- The entire flow (wallet → faucet → explorer) is identical across EVM chains
- Testnet practice builds confidence before touching real funds

---

**Next steps** — Send a small test transaction to another address (or yourself), then check gas usage and confirmations on the explorer.

Great foundational day! On to Day-4 blockchain concepts. Keep it up! 🚀