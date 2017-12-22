//
//  Animal.m
//  InstanceTypeAndId
//
//  Created by wangliang on 2017/12/22.
//  Copyright © 2017年 wangliang. All rights reserved.
//

#import "Animal.h"

@implementation Animal

+(id)giveMeAnimalA
{
    return [[[self class] alloc] init];
}

+(instancetype)giveMeAnimalB
{
    return [[[self class] alloc] init];
}

+(Animal *)giveMeAnimalC
{
    return [[[self class] alloc] init];
}

-(id)initAnimalsAWithName:(NSString *)name
{
    self=[super init];
   
    if (self) {
        
        _name=name;
    }
    return self;
}

-(instancetype)initAnimalsBWithName:(NSString *)name
{
    self=[super init];
    
    if (self) {
        
        _name=name;
    }
    return self;
}

@end
