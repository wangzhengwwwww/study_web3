# study_web3

1. 启动本地网络:`npx hardhat node`

2. 新的命令行界面中部署 TodoList 到本地网络

`npx hardhat ignition deploy ./ignition/modules/TodoList.js --network localhost`

为了在 hardhat 中使用环境变量我们安装 dotenv

`npm install dotenv --save`