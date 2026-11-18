> **STATUS UPDATE — 18 November 2026:** This document contains historical observations and/or proposed actions. Blockaid's later correspondence acknowledges a reported 50% BKR treasury lock, but its exact transaction and current on-chain state remain independently unverified here. The Cake-LP lock is a separate asset. Blockaid's Spam classification remains active. See [reconciled evidence](BLOCKAID-RECONCILIATION-2026-11-18.md). Do not treat earlier 'not executed' statements as a current confirmation that no treasury lock exists.

# BKR Token — Blockaid evidence register

Case: **#1568125**  
Network: BNB Smart Chain mainnet (chain ID 56)  
Token contract: `0x3f9079DD3C32a39A7eDa8e348C00e32f80D1eF70`

## Verified repository facts

- Public GitHub repository: https://github.com/bekirakd1-cloud/BKR-Token
- Project-reported website: https://bkr-token-bekir.musicalgala1.chatgpt.site/
- Project-reported Telegram: https://t.me/BKRTokenOfficial
- Contract explorer: https://bscscan.com/address/0x3f9079DD3C32a39A7eDa8e348C00e32f80D1eF70#code

The website and Telegram links have not been independently authenticated as owned by the token project.

## Evidence supplied by project correspondence (not independently chain-verified)

- Reported PinkLock V2 treasury lock: **50,000,000 BKR**.
- Reported lock date: **2026-11-17 15:28 UTC**.
- Reported unlock date: **2027-05-17 15:16 UTC**.
- Reported unlocked amount: **0 BKR**.
- Reported lock owner: `0x3Fa0a06d3C79Cba755cC324f40001a8e66619CFC`.
- BscScan transaction hash (shown in user-provided transaction screenshots): `0xecd5a45eb8f60731f03aa8f6a2f1d0f60ea082ca7311780dc07dcbfea32f830d`.
- Transaction explorer: https://bscscan.com/tx/0xecd5a45eb8f60731f03aa8f6a2f1d0f60ea082ca7311780dc07dcbfea32f830d
- Transaction status in screenshot: Success; block 134143587; timestamp 2026-11-17 15:28:51 UTC; transfer of 50,000,000 BKR from reported lock owner to PinkLock V2.
- PinkLock V2 destination shown: `0x407993575c91ce7643a4d4cCACc9A98c36e1BBE`.
- Lock expiry is shown in the transaction action as May 17, 2027; independently verifying lock state, lock ID and expiry via the lock contract remains outstanding.

**Important:** Treasury-token locking and liquidity-provider (LP) token locking are distinct. Do not represent this 50m BKR treasury lock as an LP lock.

## Outstanding independent verification

1. Capture verified contract source and compiler metadata from BscScan.
2. Reproduce deployed bytecode with exact source, dependencies and constructor arguments; record reproducible build commands and commit SHA.
3. Transaction hash and transfer screenshot obtained; independently verify lock ID, current lock state, expiry and contract event data.
4. Check current pool reserves, LP lock, liquidity depth, holder count, wallet concentration, and organic trading volume with dated on-chain evidence.
5. Verify website and social ownership through reciprocal links and consistent project metadata.
6. Obtain an independent security review, if feasible.

## Risk disclosure

Blockaid retained its Spam classification in its reported November 2026 correspondence, citing low liquidity, very low organic trading activity, volatile pricing, few holders, concentrated supply and weak external identity signals. Its reported review did not identify obvious mint, blacklist, pause, upgrade or owner backdoor functionality. This is **not** a safety certification.

No price, volume, holder growth, or risk-warning removal is guaranteed. Do not simulate volume, distribute tokens among self-controlled wallets to inflate holder count, or describe unverified evidence as independently verified.
