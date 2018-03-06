//
//  ViewController.m
//  PlanB
//
//  Created by KayCM on 2018/3/6.
//  Copyright © 2018年 KayCM. All rights reserved.
//

#import "ViewController.h"
#import "PlanB-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self ViewSetup];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)ViewSetup{
    
    [self.navigationController.navigationBar setHidden:YES];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    LoginSwift *Ls = [[LoginSwift alloc] initWithFrame:CGRectMake(30, 30, 300, 300)];
    
    
    [self.view addSubview:Ls];
    
}


@end
