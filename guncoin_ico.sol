// Guncoin_ICO

// Version of compiler
pragma solidity ^0.4.11;

contract guncoin_ico {
 
    // Introducing the maximum number of Guncoins available for sale
    uint public max_guncoins = 1000000;
    
    // Introducing the USD to Guncoins conversion rate
    uint public usd_to_guncoins = 1000;
    
    // Introducing the total number of Guncoins that have been bought by the investors
    uint public total_guncoins_bought = 0;
    
    // Mapping from the inverstor address to its equity in Guncoins and USD 
    mapping(address => uint) equity_guncoins; 
    mapping(address => uint) equity_usd;
    
    // Checking if an investor can buy Guncoins
    modifier can_buy_guncoins(uint usd_invested) {
        require (usd_invested * usd_to_guncoins + total_guncoins_bought <= max_guncoins);
        _;
    }
    
    // Getting the equity in Guncoins of an inverstor
    function equity_in_guncoins(address investor) external constant returns (uint) {
        return equity_guncoins[investor];
    }
    
    // Getting the equity in usd of an investor
    function equity_in_usd(address investor) external constant returns (uint) {
        return equity_usd[investor];
    }
    
    // Buying Guncoins
    function buy_guncoins(address investor, unit usd_invested) external  
    can_buy_guncoins(usd_invested) {
        uint guncoins_bought = usd_invested * usd_to_guncoins;
        equity_guncoins[investor] += guncoins_bought;
        equity_usd[investor] = equity_guncoins[investor] / usd_to_guncoins; 
        total_guncoins_bought += guncoins_bought;
        
    }
    
    // Selling Hadcoins 
    function sell_guncoins(address investor, unit guncoins_sold) external{
        equity_guncoins[investor] -= guncoins_sold;
        equity_usd[investor] = equity_guncoins[investor] / usd_to_guncoins; 
        total_guncoins_bought -= guncoins_sold;
    }
    
}