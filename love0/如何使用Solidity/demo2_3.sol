// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.22 <0.9.0;

library MathLib {
    function add(uint _num1,uint _num2) public pure  returns(uint) {
        uint a = _num1 + _num2;
        return a;
    }

    function minus(uint _num1,uint _num2) public pure  returns(uint) {
        uint a = _num1 - _num2;
        require(_num2 >= _num1,unicode"2不能大于1.");
        return a;
    }

    function ride(uint _num1,uint _num2) public pure  returns(uint) {
        uint a = _num1 * _num2;
        return a;
    }

    function indexOf(uint[] storage self,uint value) public view returns (uint) {
        for (uint i = 0;i < self.length;i++) {
            if(self[i] == value) {
                return i;
            }
        }
        return uint(99);
    }
}

contract CalcTest {
// 基础库的实现：

// 编写一个库 MathLib，实现加法、减法和乘法函数，并在合约中使用该库。
// 链接库的使用：
    function add(uint num1,uint num2) public pure returns (uint) {
        return MathLib.add(num1,num2);
    }

    function minus(uint num1,uint num2) public pure returns (uint) {
        return MathLib.minus(num1,num2);
    }

    function ride(uint num1,uint num2) public pure returns (uint) {
        return MathLib.add(num1,num2);
    }
    // 修改 MathLib 的乘法函数为外部函数，然后编写一个合约 CalcTest 使用链接库，并通过库地址调用乘法函数。
    // using for 的使用：

    // 编写一个库，提供对数组的扩展功能（如 contains 函数检查数组是否包含某个元素），并在合约中使用 using for 语法扩展数组类型。

   using MathLib for uint[];//将函数库绑定到uint[]类型
   uint[] data;
   function append(uint value) public {
        data.push(value);
   }

   function replace(uint _old,uint _new) public {
        uint index = data.indexOf(_old);//调用库函数
        if(index  == uint(99)) {
            data.push(_new);
        } else {
            data[index] = _new;
        }
   }

    function getData() public view returns (uint[] memory) {
        return data;
   }

}
