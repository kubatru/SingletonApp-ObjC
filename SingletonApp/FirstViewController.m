//
//  FirstViewController.m
//  SingletonApp
//
//  Created by Jakub Truhlar on 16.11.14.
//  Copyright (c) 2014 Jakub Truhlar. All rights reserved.
//

#import "FirstViewController.h"
#import "NameClient.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];    
}

- (void)viewDidAppear:(BOOL)animated {
    
    NameClient *client = [NameClient sharedInstance];
    _textLabel.text = client.name;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
