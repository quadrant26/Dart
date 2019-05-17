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