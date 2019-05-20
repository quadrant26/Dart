# Dart
Study Dart

1. install

    main 入口方法

2. 变量
    
    a. var and const

        final 只能赋值一次

    b. 数值型 - Number

        num     数字类型
        int     整型
        double  浮点型

        0.0 / 0.0 => NaN

        + - * / ~/(取整) %(取余)

        isNaN isEven isOdd

        abs round floor ceil toInt toDouble 

    c. 字符串 - Sting

        'str' "str"

        '''str''' """str"""

        r'str'

        + * == []

        ${expression}

        length isEmpty isNotEmpty

        contains substring startsWith endsWith indexOf lastIndexOf

        toLowerCase toUpperCase trim trimLeft trimRight split repace

    d. 布尔型 - Boolean

        bool 

        true false

    e. 列表 - List

        var list = [1,2,3]

        var list = const[1,2,3] 不可变

        var list = new List()

        length
        add insert
        remove clear
        indexOf lastIndexOf
        sort sublist
        shuffle asMap forEach

    f. Map
        
        var map = {"a": 1, "b": 2};

        var map = const{"a": 1, "b": 2}; 不可变

        var map = new Map();

        length
        isEmpty isNotEmpty
        Keys values
        containsKey() containsValue()
        remove
        forEach



    g. Dynamic

3. 运算符

    算术运算符

        + - * / ~/(取整) %(取余)

        isNaN isEven isOdd

        abs round floor ceil toInt toDouble 

    关系运算符

        == != > < >= <=

        == 

    逻辑运算符

        ! && ||

    赋值运算符

        = ??=

        += -= /= *= %=
    
    条件表达式

        condition ? expression1 : expression2

        expression1 ?? expression2  // 第一个表达式是真，使用第一个表达式，反之使用第二个表达式

4. 流程控制

    a. 条件

        if else if else 

    b. 循环

        for
        for .. in

        while
        do...while

    c. break and continue

    d. switch case

5. 方法

    a. 定义

        返回类型 方法名 (参数1, 参数2, ...){
            方法体...
            return 返回值
        }

        Terminal
        dart function_declaration.dart 1 "Test" True

        方法也是对象，并且有具体类型Function
        返回值类型、参数类型都可以忽略
        箭头语法： => expr 是 { return expr; }缩写。只适用一个表达式
        // getPerson2 (name, age) => "name=$name, age=$age";
        方法都有返回值，如果没有指定，默认return null 作为返回值

    b. 可选参数

        可选参数必须在固定参数的后面

        可选命名参数 ${param1, param2, param3, ...}
        printPerson(String name, {int age, String gender}){
            print("name=$name, age=$age, gender=$gender");
        }
        printPerson("李四", age: 20, gender: "Male");

        可选位置参数 ${param1, param2, param3, ...}
        printPerson2(String name, [int, age, String gender]){
            print("name=$name, age=$age, gender=$gender");
        }
        printPerson2("张三", 18, "Famale");

    c. 默认参数

        使用 = 在可选参数指定默认值

            printPerson(String name, {int age = 30, String gender}){
                print("name=$name, age=$age, gender=$gender");
            }

            printPerson2(String name, [int age = 30, String gender]){
                print("name=$name, age=$age, gender=$gender");
            }

        默认值只能是编译时常量

    d. 方法对象

        可以作为对象赋值给其他变量
        方法可以作为参数传递给其他方法

    e. 匿名方法

        (param1, param2...){
            方法体...
            return 返回值
        }

        var result = listTimes(list2, (str){
            return str * 3;
        });


    f. 闭包

        闭包是一个方法(对象)
        闭包定义在其他方法内部
        闭包能够访问外部方法的局部变量，并持有其状态

6. 面向对象

    a. 类与对象
        
        class Person{}
        属性默认会生成 getter 和 setter 方法
        使用 final 声明的属性只有 getter 方法
        属性和方法通过 . 访问
        方法不能重载

    b. 计算属性

        通过计算而来，不存储值

    c. 构造方法

        没有自定义构造方法， 则有一个默认的构造方法

        /*
        Person(String name, int age){
            this.name = name;
            this.age = age;
        }*/
        Person(this.name, this.age){
            print(name);
        }

    d. 常量构造方法

        如果类是不可变状态，可以把对象定义为编译时常量
        使用const 声明构造方法，并且所有变量都为 final
        使用 const 声明对象，可以省略

    e. 工厂构造方法

        类似于设计模式中的工厂模式
        在构造方法钱加关键字 factory
        可以返回对象

    f. 初始化列表

        初始化列表回在构造方法体执行之前执行
        使用逗号分隔初始化表达式
        初始化列表常用于设置 final 变量的值

        Person.withMap(Map map): gender = map['gender']{
            this.name = map['name'];
            this.age = map['age'];
        }

    g. 静态成员

        使用 static 关键字来实现类级别的变量和函数
        静态成员不能发文非静态成员，非静态成员可以访问静态成员
        类中的常量需要使用 static const 声明

        static const int maxPage = 10;
        static int currentPage = 1;
        // 下滑
        static void scrollDown(){
            currentPage = 1;
            print("ScrollDown...");
        }
        
    h. 对象操作符

        条件成员访问 ?.
        类型转换 as
        是否指定类型 is, is!
        级联操作 ..
        var person4 = new Person();
        person4..name = 'Tom'
               ..age = 30
               ..work();

    j. 对象call方法

        如果类实现了 call() 方法， 则该类的对象可以作为方法使用

    k. 继承

        extends 继承一个类
        子类会继承父类的可见的属性和方法，不会继承构造方法
        子类能够复写父类的方法，getter和setter
        单继承，多态性
        
    l. 继承中的构造方法

        子类的构造方法默认会调用父类的无名无参构造方法
        如果父类没有无名无参构造方法，则需要显示调用父类构造方法
        在构造方法参数后使用：显示调用父类构造方法

        执行顺序
            父类的构造方法在子类构造方法体开始执行的位置调用
            如果有初始化列表，初始化列表会在父类构造方法之前执行


    m. 抽象类

        使用 abstract 表示， 不能被实例化
        抽象方法不用 abstract 修饰， 无实现
        抽象类可以没有抽象方法
        抽象方法的类一定得声明为抽象类

    n. 接口

        类就是接口
        每个类都隐式的定义了一个包含所有实例成员的接口
        class Student implements Person{

        }
        如果是复用已有类的实现，使用继承(extends)
        如果只是使用已有类的外在行为，使用接口（implements）

    o. Mixins

        Mixins 类似于多继承，是在多继承中重用一个类代码的方式
        class D extends A with B, C{

        }
        作为 Mixin 的类不能有显示声明的构造方法
        作为 Mixin 的类只能继承自 Object
        使用关键字 with 连接一个活多个 mixin

    p. 操作符覆写

        覆写操作符需要在类中定义

        返回类型 operator 操作符 (参数1, 参数2, ...){
            实现体...
            return 返回值
        }

        如果 覆写 ==, 还需要覆写对象的 hashCode getter 方法

        可覆写的操作符

        < + | [] > / ^ []= <= ~/ & ~ >= * << == - % >> 
    
7. 枚举&泛型

    a. 枚举

        一种有穷序列集的数据类型
        使用关键字 enum 定义一个枚举
        常用于代替常量，控制语句

        index 从 0 开始， 依次累加
        不能指定原始值

    b. 泛型 

        var list = new List<String>();
        Dart 中类型是可选的， 可使用泛型限定类型
        使用泛型能够有效的减少代码重复

        类的泛型
        方法的类型

