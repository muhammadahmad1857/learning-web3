# Solidity Beginner Notes – Types and Setup guide

**Date:** 18-Jan-2026  

---

## [1. Setting Up Remix IDE](#1-setting-up-remix-ide)

**Remix URL:** [https://remix.ethereum.org/#lang=en](https://remix.ethereum.org/#lang=en)  

**Steps:**
1. Open Remix in your browser.
2. Add the **Solidity plugin** for better suggestions, syntax highlighting, and compiler info.

**Folder Structure in Remix:**
- `contracts/` → Your smart contracts (`.sol` files)
- `scripts/` → Scripts for deploying and interacting
- `tests/` → Test cases for contracts
- `.deps/` → Dependencies

---

## [2. Solidity Versioning](#2-solidity-versioning)

```solidity
pragma solidity 0.8.21;         // Exactly version 0.8.21
pragma solidity ^0.8.21;        // 0.8.21 or higher, but <0.9.0
pragma solidity >=0.8.21 <0.9.0; // Range: 0.8.21 up to but not including 0.9.0
````

**Explanation:**

* `^0.8.21` → Accepts any minor/patch above 0.8.21 but below 0.9.0
* `>=0.8.21 <0.9.0` → Explicit range
* Always specify the version to avoid breaking code when Solidity updates.

---

## [3. Comments in Solidity](#3-comments-in-solidity)

Comments help you **explain your code** and make it readable.These lines dont get compiled.

* **Single-line:** `//`

```solidity
// This is a single-line comment
```

* **Multi-line:** `/* ... */`

```solidity
/*
This is a multi-line comment
Useful for long explanations
*/
```

---

## [4. SPDX License](#4-spdx-license)

```solidity
// SPDX-License-Identifier: MIT
```

**Explanation:**

* Specifies the **license** for your contract
* `MIT` → Very permissive, allows others to use/modify/distribute
* Other licenses: `GPL-3.0`, `Apache-2.0`
* Most compilers **warn** if license is missing

---

## [5. Solidity Data Types](#5-solidity-data-types)

Solidity has many data types, divided into **Value types** and **Reference types**.

### [5.1 Value Types](#51-value-types)

#### 1. Boolean

* Stores `true` or `false`

```solidity
bool isActive = true;
```

#### 2. Integer Types

* **Unsigned (uint)** → Only positive numbers (0 and above)
* **Signed (int)** → Can be negative or positive
* **Bit size matters**: `uint8`, `uint16`, ..., `uint256`

  * `uint8` → 8 bits → max value = 2^8 - 1 = 255
  * `int8` → 8 bits → range = -128 to 127

**Example:**

```solidity
uint8 smallNumber = 200; // 0 to 255
int8 signedNumber = -100; // -128 to 127
uint64 bigNumber = 100000; // 64-bit unsigned, much bigger range
```

**Tip:** More bits = bigger number you can store.

---

#### 3. Address

* Stores Ethereum addresses (20 bytes)

```solidity
address myWallet = 0x70997970C51812dc3A010C7d01b50e0d17dc79C8;
```

---

#### 4. String

* Sequence of characters

```solidity
string myName = "Ahmad";
```

---

#### 5. Bytes

* Fixed-size array of bytes

```solidity
bytes32 myHash = "cat"; // 32 bytes, Solidity pads short strings
```

**Bits vs Bytes**

* **Bit (b)** → smallest unit, 0 or 1
* **Byte (B)** → 8 bits
* Solidity integers use bits to define range:

  * `uint8` → 8 bits = 1 byte
  * `uint256` → 256 bits = 32 bytes

---

### [5.2 Reference Types](#52-reference-types)

* **Arrays** → `uint256[] numbers;` (dynamic size)
* **Structs** → Custom data types grouping multiple types
* **Mappings** → `mapping(address => uint256)` like hash tables

---

### ✅ Key Takeaways

* Solidity has **value types** (int, uint, bool, address, bytes, etc.) and **reference types** (arrays, structs, mappings).
* **Bit size matters**: defines the range of numbers. More bits = more storage.
* **Bytes vs bits** → 1 byte = 8 bits, used to calculate max values of uint/int.
* Always define **pragma version** and **license**.
* Use **comments** for readability.

---

### Useful Links

* [Remix IDE](https://remix.ethereum.org/#lang=en)
* [Solidity Docs – Types](https://docs.soliditylang.org/en/latest/types.html)
* [SPDX License List](https://spdx.org/licenses/)
* [Solidity Docs – Integers](https://docs.soliditylang.org/en/latest/types.html#integers)


