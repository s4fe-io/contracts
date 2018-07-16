var S4FE = artifacts.require("./S4FE.sol");

module.exports = function(deployer , network , accounts) {

	var owner = accounts[0];
	var wallet = accounts[0];
	var executor = accounts[1];

	deployer.deploy(S4FE).then(function(){
		S4FE.deployed().then(function(tokenInstance) {
			console.log('----------------------------------');
			console.log('Token Instance' , tokenInstance.address);
			console.log('----------------------------------');
		});	
	});	
};
