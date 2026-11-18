# Blockaid evidence reconciliation — 18 November 2026

Case: **#1568125**  
Network: BNB Smart Chain (56)  
Token: `0x3f9079DD3C32a39A7eDa8e348C00e32f80D1eF70`

## Evidence tiers
- **Blockaid correspondence (18 Nov 2026):** In screenshots supplied by the project operator, Blockaid acknowledges publication of Solidity code, BscScan verification, and **a 50% treasury-token lock**. It explicitly retains the Spam classification because of extremely limited usable liquidity, concentrated beneficial ownership, and lack of recognized market visibility. This is **correspondence evidence**, not independent on-chain verification of the lock.
- **GitHub documentation (reviewed 18 Nov):** `README.md`, `BLOCKAID-EVIDENCE.md`, `BLOCKAID_EVIDENCE.md`, and `RISK-REMEDIATION-PLAN.md` contain older snapshots and proposals. Some still describe a 50m BKR treasury lock as only proposed. **These statements are historically dated and must not be treated as current status.**
- **LP lock (distinct asset):** The project documentation records transaction `0xd4ddc1bc1893318b4a452e51e11b1ef17aa6cebdde4a9036306373ca9f4591dc`, describing a transfer of **2.676564962783454401 Cake-LP** to PinkLock V2 on 9 Nov 2026 and reported unlock on 9 Dec 2026. This transaction concerns **LP tokens**, not a 50m BKR treasury lock.
- **Independent on-chain verification:** The explorer could not be accessed during this review. The treasury-lock transaction hash, locker contract, beneficiary, exact amount, unlock time, revocability and current state **remain unverified**. No new lock or token transfer has been made by this reconciliation.

## Reconciliation table

| Subject | Historical repo claim | Latest evidence | Reconciled status |
| --- | --- | --- | --- |
| Contract source | BscScan Exact Match screenshot; independent GitHub bytecode parity pending | Blockaid acknowledges source publication and verification | Acknowledged; independent reproduction still pending |
| Treasury lock | 50m BKR / 12-month lock was proposed, not executed under the 17 Nov plan | Blockaid's 18 Nov message recognizes a 50% treasury lock | **Reported/acknowledged, on-chain details unverified**; do not claim 12-month duration |
| LP lock | 2.676564962783454401 Cake-LP reportedly locked until 9 Dec 2026 | No new LP-lock evidence in latest email | Separate from BKR treasury lock; current share/state pending |
| Liquidity | Historical reserves in 17 Nov screenshot | Blockaid says usable liquidity only a few cents | Critical issue unresolved; fetch current reserves and total LP supply |
| Holder distribution | 5 addresses and ~99.9995% treasury in 17 Nov screenshot | Blockaid says supply largely between deployer and lock contract | Control remains concentrated; lock does not equal independent ownership |
| Market recognition | Listing pending | Blockaid says CoinGecko listing absent | Unresolved as of email; verify independently |
| Spam classification | Active | Explicitly retained | **Active** |

## Outstanding proof required
1. BKR treasury-lock transaction hash and verified locker address; BscScan token transfer event showing the exact BKR amount.
2. Locker beneficiary, lock creation and unlock timestamps, ability to withdraw/revoke, and current contract storage or official interface corroboration.
3. Current token holder balances and whether deployer and locker balances sum to the stated concentration.
4. Pair address, current BKR/WBNB reserves, LP total supply, LP locked share and timestamped explorer evidence.
5. Reproducible GitHub-to-deployed bytecode comparison and exact commit SHA.
6. Independent, organic trading and market listing evidence; do not simulate activity.

## Communication rule
Do **not** tell Blockaid that the treasury lock is independently verified or that market risk has been resolved. Refer to the 18 Nov acknowledgment, request precise verification criteria, and send new transaction links only when validated. Do not claim that GitHub documentation alone warrants removal of a warning.

No wallet transaction, token distribution, liquidity addition, lock modification or Blockaid email submission was executed as part of this document.
