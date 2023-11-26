/**
 * @type import('hardhat/config').HardhatUserConfig
 */
require("@nomiclabs/hardhat-ethers");
require("dotenv").config();

const { API_URL_KEY_MAINNET, PRIVATE_KEY } = process.env;

module.exports = {
  solidity: "0.8.20",
  defaultNetwork: "matic",
  networks: {
    hardhat: {},
    matic: {
      url: API_URL_KEY_MAINNET,
      accounts: [`0x${PRIVATE_KEY}`]
    },
  },
};






