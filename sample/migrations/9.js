var BlocktopusSampleCrowdsale = artifacts.require("./BlocktopusSampleCrowdsale.sol")

module.exports = function(deployer) {
  deployer.deploy(BlocktopusSampleCrowdsale);
}
