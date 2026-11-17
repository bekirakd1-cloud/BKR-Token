# Blockaid review evidence — case #1568125

**Project:** BKR Token  
**Network:** BNB Smart Chain mainnet (chain ID 56)  
**Contract:** `0x3f9079DD3C32a39A7eDa8e348C00e32f80D1eF70`  
**Verified-code page:** https://bscscan.com/address/0x3f9079DD3C32a39A7eDa8e348C00e32f80D1eF70#code

## Status

This document is a working evidence index, **not** a completed security attestation. All claims should be independently confirmed on-chain before sending to Blockaid.

## Evidence and actions

| Topic | Evidence / next action | Status |
| --- | --- | --- |
| Deployed source | Obtain the exact verified source and all imports from BscScan | Pending |
| Build reproducibility | Capture compiler version, optimization, EVM target, constructor arguments and metadata; compare deployed bytecode | Pending |
| Admin privileges | Review actual code and deployed bytecode for owner, mint, pause, blacklist and upgrade paths | Pending |
| Transfer fee | Confirm pair-only 0.5% buy and sell fee in verified source and real transactions | Pending |
| LP lock | Verify PinkLock contract, token, amount, beneficiary and unlock time directly on-chain | Pending |
| Holder concentration | Publish holder snapshot and real, independent ownership evidence | Pending |
| Liquidity | Publish current pool reserves and independent liquidity evidence | Pending |
| Market discovery | Verify pair visibility on DexScreener and other aggregators | Pending |
| Project control | Publish public-address signature proof without disclosing private keys | Pending |
| Independent audit | Obtain third-party report, if any; do not claim an audit without one | Pending |

## Prior reported findings (historical, not live measurements)

- Roughly 99.9995% of supply was concentrated in a project-controlled wallet.
- Approximately five holders were reported.
- Pool liquidity was reported as approximately 490 BKR and 0.015 WBNB.
- Reported LP lock expiration: 9 December 2026 at 18:39 UTC.
- Blockaid maintained its warning pending substantive risk reduction and evidence.

**Risk note:** Documentation, token transfers between related wallets, and superficial liquidity changes cannot demonstrate genuine decentralization or eliminate risks. Do not present internal wallets as independent holders.

## Submission plan

Only after evidence is verified, send Blockaid case #1568125 the repository commit SHA, verified source/build evidence, relevant transaction hashes, current holder distribution, LP lock proof, liquidity figures, and any independent audit. Ask for reassessment rather than promising warning removal.
