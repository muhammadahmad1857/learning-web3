
### Day 06: Blockchain Decentralization, Nodes, Consensus, and Attacks

**Date:** **15 January 2026**


#### 1. What is a Node?
- A **node** is a single computer (or server) running blockchain software that participates in the network.
- It is a **peer** in a peer-to-peer (P2P) decentralized network — no central server controls everything.
- Nodes maintain a copy of the blockchain ledger, validate transactions/blocks, relay information to other nodes, and (in some cases) create new blocks.
- Anyone can run a node if they meet the hardware/software requirements → this is key to decentralization.

#### 2. How is Blockchain Decentralized (Even if Many Nodes Run on AWS/Google Cloud)?
- **Core idea of decentralization** — No single entity controls the network. Control is distributed across thousands of independent nodes worldwide. The protocol (rules) is open-source, so anyone can join, leave, or fork the network.
- **Anyone can join** — Download the software (e.g., Bitcoin Core or Geth for Ethereum) from official sources/GitHub, sync the blockchain, and become a full node. Hardware requirements vary:
  - Bitcoin: ~500 GB storage, decent CPU/RAM, stable internet (can run on a Raspberry Pi or old PC).
  - Ethereum: Higher requirements (more storage for full archive node, but pruned/light nodes are lighter).
- **Running your own network/instance** — You can run a local testnet or private Ethereum network easily via GitHub repos/tools like Ganache or Hardhat. But the **mainnet** (real Ethereum/Bitcoin network) is the live, public one with economic value.
- **Cloud hosting concern** — Many nodes (especially for Ethereum) run on centralized cloud providers like AWS (historically ~25%+ of Ethereum nodes), Google Cloud, etc. This creates a **practical centralization risk** — if AWS banned crypto nodes or had a major outage, a large portion could go offline temporarily.
  - However, the network remains **decentralized** because:
    - Nodes are independently operated (different owners, locations, motivations).
    - If one provider (e.g., AWS) shuts down nodes, others on home servers, other clouds (Hetzner, OVH, DigitalOcean), or bare metal continue.
    - The protocol doesn't rely on any single provider — it's permissionless.
  - True decentralization is **not** zero centralization risk — it's **no single point of control/failure**. Cloud reliance is a trade-off for ease/cost, but the network survives because participants can migrate (many do run self-hosted nodes).
- **Blockchain as a decentralized database** — Yes! It's a shared, tamper-resistant ledger replicated across nodes. No central admin can change history without network agreement.

**Ethereum extra feature** — It supports **smart contracts** → decentralized computation. Code runs on every node, producing the same result (deterministic execution). This enables DeFi, NFTs, DAOs, etc., in a trustless way.

#### 3. Consensus Mechanisms
**Consensus** — The process by which all nodes agree on the current state of the blockchain (e.g., which transactions are valid, which block is next, who "wins" block creation).

It includes:
1. **Chain selection algorithm** — Decides the "canonical" chain (e.g., longest chain or heaviest chain).
2. **Sybil resistance mechanism** — Prevents fake identities (Sybil attacks) from dominating → ties influence to a scarce/costly resource (e.g., computational power or staked coins).

**Nakamoto Consensus** (named after Satoshi Nakamoto, Bitcoin's creator)  
- The original mechanism used in Bitcoin (and early Ethereum).
- Combines **Proof of Work (PoW)** with the **longest-chain rule**.
- Solves the Byzantine Generals Problem → achieves agreement in a trustless, open network.
- Nodes follow the **longest valid chain** (most proof-of-work invested → hardest to fake/rewrite).
- No voting — miners compete via puzzles; winner proposes the next block; network accepts the chain with most cumulative work.

**PoW vs PoS (Analogy)**  
Imagine a group project where the leader is chosen democratically:

- **Proof of Work (PoW)** — Like a lottery where everyone buys expensive raffle tickets (electricity + hardware). The more tickets you buy (hash power), the higher your chance to win and become leader (mine the block). It's energy-intensive and "fair" because anyone can buy hardware/electricity. But it's wasteful (like burning fuel for each ticket).
  → Used by Bitcoin (still in 2026) and was used by Ethereum pre-2022.

- **Proof of Stake (PoS)** — Like a lottery where tickets are based on how much money you lock up (stake) as collateral. Richer participants get more tickets, but if you cheat, you lose your stake (slashing). It's energy-efficient (no puzzle-solving race) and faster/cheaper.
  → Analogy: "Skin in the game" — validators risk their own coins, so they're incentivized to behave honestly.

**Current status (as of January 2026)**:
- Bitcoin → Still uses **PoW** (Nakamoto Consensus) — no change planned.
- Ethereum → Switched to **PoS** in 2022 (The Merge) → Now uses PoS + Gasper (fork-choice + chain selection).

#### 4. Common Attacks on Blockchain Networks

1. **Sybil Attack**  
   - Attacker creates thousands/fake nodes (Sybil = multiple fake identities) to gain majority influence.
   - Goal → Disrupt consensus, censor transactions, or double-spend.
   - **Prevention** → Sybil resistance mechanisms:
     - PoW: Fake nodes need real hardware/electricity → very costly.
     - PoS: Fake nodes need to stake real coins → attacker risks losing huge amounts.
   - Without resistance, one person could pretend to be "the network" and fake agreement.

2. **51% Attack** (Majority Attack)  
   - Attacker controls >50% of the network's hash power (PoW) or stake (PoS).
   - Capabilities:
     - Double-spend coins (spend, get goods, then rewrite chain to undo transaction).
     - Censor/reorder transactions.
     - Prevent blocks from others.
   - **Cannot** — Change old blocks arbitrarily (too much work/stake needed for deep reorgs) or create coins from nothing.
   - **Cost** — Extremely expensive (for Bitcoin in 2026, billions in hardware/energy). Often not profitable due to coin value drop if detected.
   - PoS makes it riskier (slashing + coin value crash).

**Summary Table: PoW vs PoS**

| Aspect              | Proof of Work (Bitcoin)                  | Proof of Stake (Ethereum post-2022)      |
|---------------------|------------------------------------------|------------------------------------------|
| Block Creator Selection | Solve hard puzzle (hash power)          | Stake-weighted randomness + validators   |
| Energy Use          | Very high                               | Very low                                 |
| Sybil Resistance    | Computational cost                      | Economic cost (staked coins)             |
| Security Model      | "Longest chain" + most work             | "Heaviest chain" + stake weight          |
| Attack Cost         | Hardware + electricity                  | Stake + opportunity cost                 |
| Finality            | Probabilistic (longer = more secure)    | Faster economic finality                 |
