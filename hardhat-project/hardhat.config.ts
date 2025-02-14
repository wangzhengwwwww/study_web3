import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";
import { ethers } from "hardhat";
require("dotenv").config()

const config: HardhatUserConfig = {
  solidity: "0.8.28",
};

export default config;


require("@nomicfoundation/hardhat-toolbox");
/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: {
    compilers: [
      {
        version: "0.8.28",
      },
    ],
    url:"https://eth-sepolia.g.alchemy.com/v2/"+process.env.ALCHEMY_API_KEY,
    accounts:[process.env.PRIVATE_API_KEY]

    // 3Ij8pa9fjmuZMjJrZkvOedTLuY6pbQcD/getNFTs/?owner=vitalik.eth
  },
//   ethercan:{
//     apiKey:process.env.ETH_API_KEY
//   }
}