const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");
module.exports = buildModule("ShippingModule", (m:any) => {
    const shipping = m.contract("RcToken", []);
    m.call(shipping, "Status", []);
    return { shipping };
}); 

// npx hardhat run ./ignition/modules/RcToken.ts --network localhost