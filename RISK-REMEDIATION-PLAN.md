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
