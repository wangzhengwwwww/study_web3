require("@nomicfoundation/hardhat-toolbox");
require('dotenv').config({ path: './.env.development' });
/** @type import('hardhat/config').HardhatUserConfig */
// console.log(process.env.VUE_APP_BASE_API)
module.exports = {
  defaultNetwork: "sepolia",
  solidity: "0.8.28",
  networks: {
    hardhat: {},
    sepolia: {
      // url:"https://eth-sepolia.g.alchemy.com/v2/3AwwAlZvEVbVlLpbrmaVR8GHyQov8AnR", 
      //   accounts: [`0x99e8da292e73b29aba07a55821465a4a7cdbbb50a8034f15b862cc02e8e2105b`],
        url:"https://eth-sepolia.g.alchemy.com/v2/" + process.env.ALCHEMY_API_KEY, 
        accounts: [`0x${process.env.PRIVATE_KEY}`],

        // url:"https://sepolia.infura.io/v3/" + process.env.ALCHEMY_API_KEY,
        //  accounts: [`0x${process.env.PRIVATE_KEY}`], 
    },
  },
};

