const MyContract = artifacts.require('./TRONCellManager.sol');

module.exports = function (deployer) {
  deployer.deploy(MyContract);
};
