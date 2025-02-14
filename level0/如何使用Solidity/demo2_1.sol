// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.4.22 <0.9.0;

contract Car {
// 基础继承练习：

// 编写一个合约 Car，包括属性 speed 和函数 drive。

    uint public speed;
    uint public drive;

    constructor()  {
        speed = 20;
        drive = 20;
    }

    function set(uint _speed,uint _drive) public  {
        speed = _speed;
        drive = _drive;
    }

}

contract ElectricCar is Car {
    // 编写一个继承 Car 的合约 ElectricCar，在其中重写 drive 函数并增加属性 batteryLevel。
    uint public batteryLevel;

    function get(uint _drive) public {
        drive = _drive;
        batteryLevel = drive + speed;
    }
    
}


// 多重继承练习：


// 编写两个合约 Person 和 Employee，然后编写一个合约 Manager，它同时继承 Person 和 Employee，并在其中重写一个函数。

contract Person {
    uint public speed;
    constructor()  {
        speed = 20;
    }

    function foo() virtual public {
        speed = 1;
    }
}

contract Employee {
    uint public drive;
    constructor()  {
        drive = 20;
    }

    function foo() virtual public {
        drive = 2;
    }
}

contract Manager is Person,Employee {
    uint public batteryLevel;

    function get() public  {
        batteryLevel = drive + speed;
    }

    function foo() public override(Person,Employee) {}
}

// 抽象合约与重写：

// 编写一个抽象合约 Shape，包括一个纯虚函数 area，然后编写两个合约 Square 和 Circle 继承 Shape，并实现 area 函数。

abstract contract Shape {
    function area() virtual public;
}

contract Square {
    
}


contract Circle {
}