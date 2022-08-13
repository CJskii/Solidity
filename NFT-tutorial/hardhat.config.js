require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config();

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.9",
  networks: {
    rinkeby: {
       // How do we define which test network to deploy to
       url: process.env.ALCHEMY_API_KEY_URL,
        // How do we define which account to use for deployment
       accounts: [process.env.PRIVATE_KEY],
       // We are using dotenv to store our API URL and PRIVATE_KEY
    }
  }
};
