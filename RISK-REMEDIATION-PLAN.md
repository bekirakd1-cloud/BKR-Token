# BKR risk remediation plan — proposal (17 November 2026)

**Status: proposed, not executed.** This document does not claim Blockaid approval, an audit, liquidity improvements, or ownership decentralization.

Contract: `0x3f9079DD3C32a39A7eDa8e348C00e32f80D1eF70` (BNB Smart Chain mainnet). Blockaid case: #1568125.

## Current evidence
- BscScan shows verified source (Exact Match); separately published GitHub source still needs independent build/bytecode reproduction.
- 17 November holder screenshot: five holder addresses; project treasury controls approximately 99.9995% of supply.
- PinkLock transaction succeeded for 2.676564962783454401 LP tokens, reported expiration 9 December 2026. Current lock share and reserves remain to be verified.
- Independent audit not yet submitted.

## Proposed priorities
1. **Protect holders first.** Do not send tokens to related wallets to simulate decentralization, promise guaranteed returns, or claim the warning has been removed.
2. **Verify present liquidity.** Identify pair contract, LP total supply, reserves, LP token ownership, and percentage actually locked. Record timestamps and transaction links.
3. **Transparent treasury policy.** If the founder retains 80 million BKR and allocates up to 20 million for future ecosystem/liquidity purposes, label these as a **proposal**. Any actual reserve lock or vesting requires a reviewed contract, clear beneficiary, revocation rules, vesting schedule, and public transaction proof. Do not transfer until technical and economic risks are reviewed.
4. **Independent security assessment.** Commission qualified review of contract, treasury custody, DEX pair detection, fee-on-transfer interactions and LP lock setup.
5. **Genuine market participation.** Build independently controlled holders through legitimate transparent distribution, not wash trading or fake holder counts.
6. **Provide Blockaid with factual updates.** Submit current on-chain evidence and audit results when available, requesting reassessment without assuming the warning will be removed.

## Important caveat
A locked treasury can still be concentrated in beneficial ownership. A short LP lock and very small pool can remain significant risks. Changes to liquidity, token custody or contract deployments may be irreversible and may have costs. Any execution needs explicit parameters and owner wallet approval.


## Execution decision gate — 17 November 2026

**No token lock, distribution, swap, or liquidity deposit has been executed under this plan.**

The prior 80m/20m split and the later 30m founder suggestion are discussion scenarios, not binding allocations. The exact distribution will be finalized only after verifying actual reserves, LP ownership, custody, contract behavior and independent review.

### Order of operations
1. Verify the on-chain treasury balance and BKR/WBNB pair reserves, LP supply, existing PinkLock position and its actual expiry.
2. Confirm the exact contract's fee destination, fee accounting, transfer behavior, and pair-specific rules from independently reproduced bytecode; commission tokens currently go to the treasury and are not automatically converted to TRY.
3. Review proposed lock provider's code, beneficiary and recovery controls before depositing any BKR; ensure an unlocked operational reserve is clearly identified and the commission collection path is not impaired.
4. Publish a precise token allocation and vesting proposal with beneficiaries, milestones, release conditions, and disclosure of common control. Avoid fake holder creation.
5. Seek a third-party security review and independent project-control proof. Improve genuinely available market liquidity only with explicit funding authorization and awareness of irreversible loss and price-impact risks.
6. Update Blockaid case #1568125 with actual transaction hashes and independently checkable facts. A warning removal cannot be guaranteed.

### Owner authorization required before any irreversible action
- Exact amount of BKR to lock or distribute, lock destination contract, beneficiary address, duration, unlock date and ability to revoke.
- Gas cost, token permissions, risks and funding of any new liquidity.
- A wallet confirmation by the authorized owner. Never ask for seed phrase or private key.

### Treasury income monitoring
The daily 21:00 Türkiye-time BKR report tracks BKR-denominated buy/sell fees at treasury `0x3Fa0a06d3C79Cba755cC324f40001a8e66619CFC`, distinguishes fees from ordinary transfers, and labels unverified estimates. No automatic TL withdrawal is enabled.


## Founder-approved allocation proposal — 17 November 2026

The founder has **approved this allocation plan**, but **no on-chain transfers, token locks, or liquidity deposits have been performed** as a result of the approval.

| Purpose | BKR | % of supply | Intended treatment |
| --- | ---: | ---: | --- |
| Founder reserve | 50,000,000 | 50% | Proposed 12-month lock, subject to verified lock contract and exact unlock parameters |
| Market and liquidity reserve | 20,000,000 | 20% | Staged use based on market depth and real funding; not automatically added to pool |
| Project development | 15,000,000 | 15% | Milestone-based use, with public reporting |
| Community distribution | 15,000,000 | 15% | Genuine, transparent staged distribution to independent recipients |
| **Total** | **100,000,000** | **100%** | |

**Critical:** These are accounting intentions, not four existing wallets or four independently held allocations. The treasury's current concentration remains unchanged until actual, verifiable events occur. The 12-month lock period has not started. The old 80m/20m proposal is superseded. The existing PinkLock LP lock is separate from this proposed BKR token lock.

### Before implementing the founder lock
- Confirm treasury ownership/control, exact spendable balance, and that 50m BKR is not already subject to any other obligations.
- Select and independently review the token-lock contract, chain, fee, beneficiary, revocability and withdrawal mechanics.
- Define precise start and end timestamps and confirm whether additional fees received by treasury remain accessible.
- Show exact on-chain transaction parameters to the founder for wallet authorization. No secret phrase/private key sharing.
- Verify resulting lock transaction on BscScan and publish evidence.


## Token lock provider preliminary review — 17 November 2026

PinkSale's official PinkLock documentation describes simple token locks with an explicit token contract, beneficiary/owner, amount, UTC unlock date, token approval and lock transactions:
- https://docs.pinksale.finance/pinklock/create-a-lock
- https://docs.pinksale.finance/pinklock/how-to-unlock

**Preliminary compatibility observation only:** The GitHub BKR.sol code charges the 0.5% fee on transfers involving the cached canonical BKR/WBNB pair; ordinary treasury-to-locker token transfers appear fee-free. This must be validated against deployed bytecode and actual lock contract behavior before approving a 50m transfer. PinkSale docs caution about taxed-token lock compatibility and cite differing locker addresses across documentation versions. Do not assume a particular locker address is safe or current based on documentation alone.

**STOP / execution gate:** Do not approve or send 50,000,000 BKR until the precise BNB-chain locker contract and its current implementation are verified on-chain, the treasury has confirmed control and sufficient BNB gas, the owner/beneficiary and exact UTC unlock time are checked, and a qualified independent security review has assessed the lock and BKR transfer behavior. The user must review the wallet transaction. No lock was created by this documentation update.

**Additional review:** Verify BKR transfer accounting on self-transfers involving the trading pair and treasury, and the LP fee mechanics; source code comments alone are not security evidence.
