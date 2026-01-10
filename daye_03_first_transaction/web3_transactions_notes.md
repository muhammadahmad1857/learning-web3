

# 📘 Web3 Learning Notes — Day 3

## Making My First Transaction (EVM)

**Date:** **9 January 2026**

---

## 🌐 Overview

Today’s focus was understanding how a **basic blockchain transaction** works on an **EVM-based network**.

The goal was not smart contracts yet, but:

* setting up a wallet correctly
* receiving tokens from a faucet
* verifying the transaction using a block explorer

This process is **fundamental** and applies to **all EVM-compatible blockchains**.

---

## 🔐 Wallet Setup

I used **MetaMask** as my wallet.

### Setup process:

* Installed MetaMask browser extension
* Created a new wallet
* Set a strong password

### Wallet security concepts:

* **Secret Recovery Phrase (Seed Phrase)**

  * 12-word phrase generated during wallet creation
  * Gives full access to the wallet
  * If lost → wallet cannot be recovered
  * If leaked → funds can be stolen
* **Private Key**

  * Used to sign transactions
  * Unique per account
  * Must never be shared
* **Public Address**

  * Shown at the top of MetaMask
  * Used to receive tokens
  * Safe to share

---

## 🌐 Blockchain Networks

### Mainnet

* Real blockchain
* Uses real money
* Mistakes cost real funds

### Testnet

* Used for development and testing
* Uses free test tokens
* Same transaction behavior as mainnet

For learning purposes, I used **testnet**.

---

## 🧪 Sepolia Testnet

I switched my wallet to **Sepolia Testnet**.

Sepolia is:

* Actively supported
* Commonly used for testing
* Suitable for developers learning Ethereum

---

## 💧 Receiving Tokens from a Faucet

Since ETH faucets now require holding real ETH, I used **LINK tokens** instead.

I used the **Chainlink Faucet**.

### Steps:

1. Open Chainlink faucet
2. Connect MetaMask wallet
3. Select **Sepolia** network
4. Request **test LINK**
5. Faucet sends LINK to my wallet address

This faucet transaction is a **real blockchain transaction** on Sepolia, just with test tokens.

---

## 🔍 Verifying the Transaction (Block Explorer)

After receiving LINK, I verified the transaction using a block explorer.

I used **Sepolia Etherscan**.

### Verification process:

1. Open Sepolia Etherscan
2. Paste my **wallet address** in the search bar
3. View:

   * Incoming transaction from the faucet
   * Transaction hash
   * Block number
   * Status (Success)
   * Gas used

This confirmed that:

* The faucet successfully sent tokens
* My wallet address exists on-chain
* Transactions are publicly verifiable

---

## 🧠 Key Learnings

* Wallets do not store funds — the blockchain does
* Faucets send real transactions on test networks
* Every transaction has:

  * sender
  * receiver
  * value
  * gas fee
  * transaction hash
* Block explorers allow anyone to verify on-chain data
* Transaction flow is identical across all EVM networks
