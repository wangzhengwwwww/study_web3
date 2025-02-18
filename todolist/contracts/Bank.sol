// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;
// 所有人都可以存钱
// ETH
// 只有合约 owner 才可以取钱
// 只要取钱，合约就销毁掉 selfdestruct
// 扩展：支持主币以外的资产
// ERC20
// ERC721
contract Bank {
    //状态变量
    address public immutable owner;

    //事件
    event Deposit(address _ads,uint256 amout);
    event Witdraw(uint amout);

    //receive
    receive() external payable {
        emit Deposit(msg.sender,msg.value);
    }

    //构造函数
    constructor() payable {
        owner = msg.sender;
    }

    //方法
    function vithdraw()  external {
        require(msg.sender == owner,"not Owner");
        emit Witdraw(address(this).balance);
        selfdestruct(payable(msg.sender));
    }
    function getBalance() external view returns(uint) {
        return address(this).balance;
    }
}