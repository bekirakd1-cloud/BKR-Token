# Blockaid review evidence — case #1568125

**Project:** BKR Token  
**Network:** BNB Smart Chain mainnet (chain ID 56)  
**Contract:** `0x3f9079DD3C32a39A7eDa8e348C00e32f80D1eF70`  
**Verified-code page:** https://bscscan.com/address/0x3f9079DD3C32a39A7eDa8e348C00e32f80D1eF70#code

## Status

This document is a working evidence index, **not** a completed security attestation. All claims should be independently confirmed on-chain before sending to Blockaid.

## BscScan verification evidence (17 November 2026)

User-provided BscScan contract page screenshot displays **Source Code Verified — Exact Match**, contract name **BKR**, compiler **v0.8.24+commit.e11b9ed9**, optimizer **Yes with 200 runs**, EVM **paris**, license **MIT**. This verifies BscScan's published source against the deployed contract; it does **not** by itself prove that the separately uploaded GitHub file has been byte-for-byte compared or independently compiled.

GitHub source: [contracts/BKR.sol](contracts/BKR.sol).

## Evidence and actions

| Topic | Evidence / next action | Status |
| --- | --- | --- |
| Deployed source | BscScan displays Source Code Verified: Exact Match; supplied BKR.sol copied into this repository. Confirm exact text parity independently. | BscScan verified; GitHub parity pending |
| Build reproducibility | BscScan displays Solidity v0.8.24+commit.e11b9ed9, optimizer 200 runs, EVM Paris. Reproduce bytecode from GitHub copy and compare. | Settings confirmed from BscScan screenshot; independent build pending |
| Admin privileges | Review actual code and deployed bytecode for owner, mint, pause, blacklist and upgrade paths | Pending |
| Transfer fee | Confirm pair-only 0.5% buy and sell fee in verified source and real transactions | Pending |
| LP lock | Successful BscScan transaction confirms 2.676564962783454401 Cake-LP transferred to PinkLock V2 on 9 Nov 2026; interface reports lock until 9 Dec 2026. Total LP supply, lock percentage and current withdrawal state still require verification. | Transaction verified from BscScan screenshots; lock share pending |
| Holder concentration | BscScan Holders screenshot dated 17 Nov 2026 shows 5 addresses and approximately 99.9995% held by treasury. Independence of holders unverified. | Snapshot documented; concentration unresolved |
| Liquidity | Publish current pool reserves and independent liquidity evidence | Pending |
| Market discovery | Verify pair visibility on DexScreener and other aggregators | Pending |
| Project control | Publish public-address signature proof without disclosing private keys | Pending |
| Independent audit | Obtain third-party report, if any; do not claim an audit without one | Pending |

## PinkLock transaction evidence (17 November 2026 screenshot review)

- Transaction: https://bscscan.com/tx/0xd4ddc1bc1893318b4a452e51e11b1ef17aa6cebdde4a9036306373ca9f4591dc
- Status: Success; block 132634237
- Timestamp displayed: 9 Nov 2026, 18:42:16 UTC
- Sender: `0x3Fa0a06d3C79Cba755cC324f40001a8e66619CFC`
- Recipient: PinkLock V2, `0x407993575c91ce7643a4d4cCACc9A98c36e1BBE`
- LP transferred: 2.676564962783454401 Pancake LP tokens (Cake-LP)
- BscScan action summary displays lock until 9 Dec 2026.
- **Not yet proven:** proportion of LP supply locked, whether other LP positions exist, and live lock state. LP tokens are not BKR tokens.

## Holder snapshot (17 November 2026, user-provided BscScan screenshot)

- Total holder addresses: **5** (addresses do not necessarily equal independent owners).
- Treasury `0x3Fa0a06d3C79Cba755cC324f40001a8e66619CFC`: approximately **99,999,502.89 BKR** (~99.9995% of fixed supply).
- PancakeSwap V2 BKR pool: **490.3789 BKR**.
- Other holder balances displayed: **3.4054**, **3.3205**, and **0.0000 BKR** (last value rounded by explorer display).
- This is an extremely concentrated distribution; no claim of decentralization or independently controlled holder addresses is made.
- Pool BKR reserve alone does not determine total liquidity value or LP lock percentage; WBNB reserve and LP supply require separate verification.

## Prior reported findings (historical, not live measurements)

- Roughly 99.9995% of supply was concentrated in a project-controlled wallet.
- Approximately five holders were reported.
- Pool liquidity was reported as approximately 490 BKR and 0.015 WBNB.
- Reported LP lock expiration: 9 December 2026 at 18:39 UTC.
- Blockaid maintained its warning pending substantive risk reduction and evidence.

**Risk note:** Documentation, token transfers between related wallets, and superficial liquidity changes cannot demonstrate genuine decentralization or eliminate risks. Do not present internal wallets as independent holders.

## Submission plan

Only after evidence is verified, send Blockaid case #1568125 the repository commit SHA, verified source/build evidence, relevant transaction hashes, current holder distribution, LP lock proof, liquidity figures, and any independent audit. Ask for reassessment rather than promising warning removal.
