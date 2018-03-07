//
//  ViewController.m
//  PlanB
//
//  Created by KayCM on 2018/3/6.
//  Copyright © 2018年 KayCM. All rights reserved.
//

#import "ViewController.h"
#import "PlanB-Swift.h"
#import <PermissionScope/PermissionScope-Swift.h>

@interface ViewController ()
@property (nonatomic, strong) PermissionScope *multiPscope;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self PermissionView];
    
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

-(void)PermissionView{
    
    self.multiPscope = [[PermissionScope alloc]init];
    self.multiPscope.headerLabel.text = @"Hey!~";
    self.multiPscope.bodyLabel.text = @"为了您更好的使用,\r\n我们需要向您请求以下权限.";
    [self.multiPscope addPermission:[[LocationWhileInUsePermission alloc]init] message:@"Location"];
    [self.multiPscope addPermission:[[CameraPermission alloc] init] message:@"Camera"];
    [self.multiPscope addPermission:[[PhotosPermission alloc] init] message:@"Album"];
    [self.multiPscope show:^(BOOL completed, NSArray *results) {
        NSLog(@"Changed: %@ - %@", @(completed), results);
    } cancelled:^(NSArray *x) {
        NSLog(@"cancelled");
    }];
}


@end
