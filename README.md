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