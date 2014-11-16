//
//  NameClient.m
//  SingletonApp
//
//  Created by Jakub Truhlar on 16.11.14.
//  Copyright (c) 2014 Jakub Truhlar. All rights reserved.
//

#import "NameClient.h"

@implementation NameClient

+ (NameClient*)sharedInstance {
    
    // Declare a static variable to hold the instance of your class, It’s available globally.
    static NameClient *_sharedInstance = nil;
    
    // Declare the static variable dispatch_once_t which ensures that the init code executes only once.
    static dispatch_once_t oncePredicate;
    
    // Use Grand Central Dispatch (GCD) to execute a block which initializes an instance of NameClient. This is the essence of the Singleton design pattern: the initializer is never called again once the class has been instantiated. The block of coe is avoided if the oncePredicate already exists.
    dispatch_once(&oncePredicate, ^{
        
        _sharedInstance = [[NameClient alloc] init];
        
    });
    return _sharedInstance;
}

- (instancetype)init {
    
    self = [super init];
    
    if (self) {
        
        _name = @"Jakub";
    }
    
    NSLog(@"Check if its really executed once");
    
    return self;
}

@end
