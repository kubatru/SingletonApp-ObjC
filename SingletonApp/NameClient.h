//
//  NameClient.h
//  SingletonApp
//
//  Created by Jakub Truhlar on 16.11.14.
//  Copyright (c) 2014 Jakub Truhlar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NameClient : NSObject

@property (nonatomic, strong) NSString *name;

+ (NameClient*)sharedInstance;

@end
