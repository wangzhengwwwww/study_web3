// import { ethers } from "ethers";
import { ethers } from "ethers";

// const provider = ethers.getDefaultProvider();
const ALCHEMY_MAINNET_URL = "https://eth-sepolia.g.alchemy.com/v2/3AwwAlZvEVbVlLpbrmaVR8GHyQov8AnR";
const provider = new ethers.JsonRpcProvider(ALCHEMY_MAINNET_URL)
const main = async () => {
    const balance = await provider.getBalance(`vitalik.eth`);
    console.log(`ETH Balance of vitalik: ${ethers.formatEther(balance)} ETH`);
}
main()
 
