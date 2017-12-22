//
//  ViewController.m
//  InstanceTypeAndId
//
//  Created by wangliang on 2017/12/22.
//  Copyright © 2017年 wangliang. All rights reserved.
//

#import "ViewController.h"
#import "Animal.h"
#import "Dog.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    //1. 针对工厂化方法 也就是类方法指的是用static关键字修饰的方法 以+开头
    //compiler时不报错 而会在runtime时crash -[Animal count]: unrecognized selector sent to instance 0x600000013af0
//    [[Animal giveMeAnimalA] count];
    
    //compiler时报错: No visible @interface for 'Animal' declares the selector 'count'
//    [[Animal giveMeAnimalB] count];
    
    //compiler时报错: No visible @interface for 'Animal' declares the selector 'makeSound'
//    [[Dog giveMeAnimalC] makeSound];
    
    //compiler时不报错 runtime时崩溃 -[Animal makeSound]: unrecognized selector sent to instance 0x6000000187c0
//    [[Animal giveMeAnimalA] makeSound];
   
    //compiler时报错: No visible @interface for 'Animal' declares the selector 'makeSound'
//    [[Animal giveMeAnimalB] makeSound];
    
    //打印结果: Dog bark
    [[Dog giveMeAnimalB] makeSound];
    
    /*
     instancetype:
     1> 在编译时就检查对象真实类型, 并报相应的警告问题
     2> 只能用于返回值
     
     
     id:
     1> 在编译时不能判断对象的真实类型
     2> 可以用来定义变量、作为返回值、作为形参
     3> id等价于 NSObject * 万能指针(id 动态数据类型 NSObject *是一个静态数据类型)
     
     objc.h中id定义为:
     typedef struct objc_object {
     Class isa;
     } *id;
     */
   
    //2.实例方法指的是不用static关键字修饰的方法 对象方法 以-开头
    // 类对象必须实例化后才可以使用的方法
    
    //调用"alloc", "init"时,id类型将被编译器自动转为instancetype 所以报错
     //No visible @interface for 'Animal' declares the selector 'count'
//    [[[Animal alloc] initAnimalsAWithName:@"Aries"] count];
    
    //No visible @interface for 'Animal' declares the selector 'count'
//    [[[Animal alloc] initAnimalsBWithName:@"Aries"] count];
    
}


@end
