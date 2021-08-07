/*	file name:
	Authors: Justin Negron and Richard Osborn
	created: 8/04/21
	team name: POWER_OF_TWO

	this guy accepts game variables and translates them to either 7-seg or 
	VGA, our choice.
*/
`include "hand.svh"
`include "gameState.svh"

module outputController
	(
		//inputs
		input hand dealerHand,
		input hand playerHand,
		input gameState gameState,


		//outputs - will depend on what we are hooking onto
		output logic x //some filler value.
		output logic [17: 0]   redLights,
		output logic [7: 0]    greenLights,
		output logic [6: 0]    hex0, 
		output logic [6: 0]    hex1,
		output logic [6: 0]    hex2,  
		output logic [6: 0]    hex3,   // hex3-0 is BLJK, TIE, WIN, LOSE display
		output logic [6: 0]    hex4,
		output logic [6: 0]    hex5,   // hex5-4 is dealer_hand display
		output logic [6: 0]    hex6,
		output logic [6: 0]    hex7,   // hex7-6 is player_hand display
	);

	logic [4:0] leftDealerHand
	logic [4:0] rightDealerHand 

	logic [4:0] leftPlayerHand
	logic [4:0] rightPlayerHand

	sevenSegmentDecoder segDisplayDealer(dealerHand, dealerValue);

	sevenSegmentDecoder segDisplayPlayer(playerHand, playerValue);

	

	always
		begin
			if(dealerHand <= 5'h9) 
				
			else if(dealerHand <= 5'h13)
				//make left 7-seg 1 and right 7-seg playerHand - 10
			else
				//make left 7-seg 2 and right 7-seg playerHand - 20
				
		end

	always
		begin
			if(playerHand <= 5'h9)
				
			else if(playerHand <= 5'h13)
				//make left 7-seg 1 and right 7-seg playerHand - 10
			else
				//make left 7-seg 2 and right 7-seg playerHand - 20
		end

	//output logic


	// players hand
	assign hex7 = 
	assign hex6 = 

	// dealers hand
	assign hex5 =
	assign hex4 = 

	// message screen
	assign hex3 = 
	assign hex2 =
	assign hex1 = 
	assign hex0 = 
	
	
endmodule


//TODO - 7-seg connections
//TODO - VGA connections
//TODO - LCD connections