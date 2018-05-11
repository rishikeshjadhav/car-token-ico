const CarToken = artifacts.require('./CarToken.sol');
const CarToken_name = 'CAR TOKEN';
const CarToken_symbol = 'CAR';
const CarToken_decimals = 18;
const CarToken_totalSupply = 10000000;

module.exports = function (deployer, network) {
    deployer.deploy(
        CarToken,
        CarToken_name,
        CarToken_symbol,
        CarToken_decimals,
        CarToken_totalSupply
    );
}