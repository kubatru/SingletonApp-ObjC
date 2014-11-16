//
//  SecondViewController.m
//  SingletonApp
//
//  Created by Jakub Truhlar on 16.11.14.
//  Copyright (c) 2014 Jakub Truhlar. All rights reserved.
//

#import "SecondViewController.h"
#import "NameClient.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
    
    NameClient *client = [NameClient sharedInstance];
    
    if ([client.name  isEqual: @"Jan"]) {
        
        client.name = @"Tereza";
    }
    
    else {
       
        client.name = @"Jan";
    }
    
    _textLabel.text = client.name;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
