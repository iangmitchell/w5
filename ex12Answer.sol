//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract snap1{    
	
	enum Suit { Spades, Clubs, Diamonds, Hearts}    
	
	enum Value { 
		Two, Three, Four, Five, Six, 
		Seven, Eight, Nine, Ten, 
		Jack, King, Queen, Ace 
	}    
	
	struct Card {
		Suit suit;
		Value value;
	}
	
	Card public playerOneCard;
	Card public playerTwoCard;
	
	function playerOneSelectCard(Suit _suit, Value _value) public returns (Suit, Value) {
		playerOneCard.suit = _suit;
		playerOneCard.value = _value;
		return (playerOneCard.suit, playerOneCard.value);
	}

	function playerTwoSelectCard(Suit _suit, Value _value) public returns (Suit, Value) {
		playerTwoCard.suit = _suit;
		playerTwoCard.value = _value;
		return (playerTwoCard.suit, playerTwoCard.value);
	}
	
	function setDefaultCard() public {
		playerOneCard.suit = Suit.Hearts;
		playerOneCard.value = Value.Ace;
	}
	
	
	function isMatch() public view returns(string memory){
		string memory matchCard = "Does not match, pick another card";
		if ((playerOneCard.suit == playerTwoCard.suit) && (playerOneCard.value == playerTwoCard.value))
			matchCard = "Cards match!";
		return matchCard;
	}

}
