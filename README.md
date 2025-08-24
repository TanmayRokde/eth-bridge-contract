# ETH Bridge Contract

A simple cross-chain bridge smart contract built with [Foundry](https://book.getfoundry.sh/).  
This project demonstrates how to lock, mint, and burn tokens across chains, serving as a foundation for building secure bridges.

---

## 📂 Project Structure
eth-bridge-contract/
├── lib/        # external dependencies (e.g. OpenZeppelin)
├── script/     # deployment & interaction scripts
├── src/        # core bridge contracts
├── test/       # test contracts
└── foundry.toml

---

## 🚀 Getting Started

### 1. Install Foundry
curl -L https://foundry.paradigm.xyz | bash
foundryup

### 2. Initialize the project
forge init eth-bridge-contract
cd eth-bridge-contract

### 3. Install dependencies
forge install OpenZeppelin/openzeppelin-contracts

### 4. Build
forge build

### 5. Test
forge test

---

## 📜 Example Bridge Flow
- **Lock:** Users lock tokens on Chain A.
- **Mint:** Relayer mints wrapped tokens on Chain B.
- **Burn:** Users burn wrapped tokens on Chain B.
- **Release:** Relayer unlocks tokens back on Chain A.

---

## 🛡️ Security Notes
- This is an educational reference implementation.
- Always audit before deploying to mainnet.
- Bridge security depends heavily on relayers/oracles — keep them decentralized!

---

## 📄 License
MIT
