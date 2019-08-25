var BlocktopusCrowdsale = artifacts.require("./BlocktopusCrowdsale.sol")

module.exports = function(deployer) {
  deployer.deploy(BlocktopusCrowdsale);
}
