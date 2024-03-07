// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// Cria um Token
contract Token {

//Define um nome, simbolo e casas decimais do token que será publicos essas informações
	string public name;
	string public symbol;
	uint8 public decimal;
	uint256 public totalSupply;
	
	event Transfer(address from, address _to, uint256 amount);
	event Approval(address _owner, address _to, uint256 amount);
	
	mapping(address => uint256) balance;
	
	// | key							| valor
	// | key							| valor
	
	mapping(address => mapping(address => uint256)) allowance;
	
	function balanceOf(address _owner) npublic view returns (uint256) {
		uint256 balancerOfUser = balance[_owner];
		return balanceOfUser
	}
	
	function transfer(address _to, uint256 _value) public returns (bool) {
		require(balance[msg.sender] >= _value, "INSULFICIENTE_AMOUNT");
		
		balance[_to] += _value;
		balance[msg.sender] -= _value
		
		
		emit Transfer(msg.sender, _to, _value);
		return true;
	}
	
	function approve(address _spenser, uint256 _value) public {
		allowance[msg.sender][_spender] = _value;
		Approval(address _spender, uint256 amount);
	}
	
		
	function transferFrom(address _from, address _to, uint256 _value) public {
		require(allowance[_from][msg.sender] >= _value, "INSUFFICIENT_ALLOWANCE");
		
		balance[_from] -= _value;
		balance[_to] += _value;
	
		emit Transfer(_from, _to, _value);
	}
	
	function allowance(address _owner, address _spender) public view returns (uint256) {
		return allowances[_owner][_spender]
	}
	
	constructor() {
		name = "Analysis Cript Hash";
		Symbol = "ACH";
		decimal = 18;
		
		totalSupply = = 10000 * 10e18;
		balances[msg.sender] = totalSupply;
		
	}
}	

