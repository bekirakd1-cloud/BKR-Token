// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

interface IBKRFactory {
    function getPair(address tokenA, address tokenB) external view returns (address);
}

/**
 * BKR / BNB Smart Chain mainnet (56). No constructor arguments.
 * Fixed supply and treasury; no mint, burn, pause, blacklist, owner or upgrade.
 * 0.5% BKR fee on transfers involving the canonical PancakeSwap V2 BKR/WBNB pair.
 * The factory's pair is discovered automatically on the first transfer after
 * creation and cached permanently. No owner can substitute another pair.
 * Other pools/exchanges are NOT taxed. Wallet-to-wallet transfers are untaxed.
 * Liquidity deposits/withdrawals involving the pair are also taxed; a token
 * cannot reliably distinguish these transfers from swaps. Fee rounds down.
 * Fees stay in BKR, not BNB, USD or TRY. No liquidity or price is created here.
 * This source is not an independent security audit or a promise of returns.
 * Compile: Solidity 0.8.24, optimizer enabled / 200 runs, EVM paris.
 */
contract BKR {
    string public constant name = "BKR";
    string public constant symbol = "BKR";
    uint8 public constant decimals = 18;
    uint256 public constant totalSupply = 100_000_000 * 10 ** 18;
    uint256 public constant FEE_BPS = 50;
    uint256 private constant BPS = 10_000;
    address public constant treasury = 0x3Fa0a06d3C79Cba755cC324f40001a8e66619CFC;
    address public constant FACTORY = 0xcA143Ce32Fe78f1f7019d7d551a6402fC5350c73;
    address public constant WBNB = 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c;
    address public tradingPair;
    mapping(address => uint256) public balanceOf;
    mapping(address => mapping(address => uint256)) public allowance;

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);
    event TradingPairDetected(address indexed pair);

    constructor() {
        require(block.chainid == 56, "Use BNB mainnet 56");
        require(FACTORY.code.length != 0 && WBNB.code.length != 0, "Missing DEX contracts");
        balanceOf[treasury] = totalSupply;
        emit Transfer(address(0), treasury, totalSupply);
    }

    function transfer(address to, uint256 amount) external returns (bool) {
        _transfer(msg.sender, to, amount);
        return true;
    }

    function approve(address spender, uint256 amount) external returns (bool) {
        require(spender != address(0), "Zero spender");
        allowance[msg.sender][spender] = amount;
        emit Approval(msg.sender, spender, amount);
        return true;
    }

    function transferFrom(address from, address to, uint256 amount) external returns (bool) {
        uint256 allowed = allowance[from][msg.sender];
        if (allowed != type(uint256).max) {
            require(allowed >= amount, "Insufficient allowance");
            allowance[from][msg.sender] = allowed - amount;
            emit Approval(from, msg.sender, allowed - amount);
        }
        _transfer(from, to, amount);
        return true;
    }

    function _transfer(address from, address to, uint256 amount) private {
        require(from != address(0) && to != address(0), "Zero address");
        require(balanceOf[from] >= amount, "Insufficient balance");

        address pair = tradingPair;
        if (pair == address(0)) {
            pair = IBKRFactory(FACTORY).getPair(address(this), WBNB);
            if (pair != address(0)) {
                require(pair.code.length != 0, "Invalid factory pair");
                tradingPair = pair;
                emit TradingPairDetected(pair);
            }
        }

        uint256 fee;
        if (pair != address(0) && (from == pair || to == pair)) {
            fee = amount * FEE_BPS / BPS;
        }
        // Sequential storage updates also handle self-transfers and treasury overlap.
        balanceOf[from] -= amount;
        balanceOf[to] += amount - fee;
        emit Transfer(from, to, amount - fee);
        if (fee != 0) {
            balanceOf[treasury] += fee;
            emit Transfer(from, treasury, fee);
        }
    }
}
