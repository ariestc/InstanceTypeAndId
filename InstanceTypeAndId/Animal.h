//
//  Animal.h
//  InstanceTypeAndId
//
//  Created by wangliang on 2017/12/22.
//  Copyright © 2017年 wangliang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject

@property(nonatomic,copy) NSString *name;

+(id)giveMeAnimalA;

+(instancetype)giveMeAnimalB;

+(Animal *)giveMeAnimalC;


-(id)initAnimalsAWithName:(NSString *)name;

-(instancetype)initAnimalsBWithName:(NSString *)name;

@end
