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
#import "Masonry.h"
#import "MainViewController.h"
#import "LoginViewModel.h"

@interface ViewController ()<LoginSwiftDelegate>
@property (nonatomic, strong) PermissionScope *multiPscope;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //[self PermissionView];
    
    [self ViewSetup];
    
    UIButton *Btn = [[UIButton  alloc] initWithFrame:CGRectMake(100, 100, 30, 30)];
    
    Btn.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:Btn];
    
    [Btn addTarget:self action:@selector(goooo) forControlEvents:UIControlEventTouchUpInside];
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
    
-(void)goooo{

    [self restoreRootViewController:[MainViewController new]];
}


-(void)backgroundVideoView{
    
}
    
-(void)ViewSetup{
    
    [self.navigationController.navigationBar setHidden:YES];
    
    self.view.backgroundColor = [UIColor blackColor];
    
    LoginSwift *Login = [LoginSwift new];
    Login.delegate = self;
    [self.view addSubview:Login];
    [Login mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view.mas_centerX);
        make.centerY.equalTo(self.view.mas_centerY);
        make.width.equalTo(@300);
        make.height.equalTo(@200);
    }];
    
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
    
    
- (void)restoreRootViewController:(UIViewController *)rootViewController
{
    typedef void (^Animation)(void);
    
    UIWindow* window = [UIApplication sharedApplication].keyWindow;
    
    rootViewController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    
    Animation animation = ^{
        BOOL oldState = [UIView areAnimationsEnabled];
        [UIView setAnimationsEnabled:NO];
        [UIApplication sharedApplication].keyWindow.rootViewController = rootViewController;
        [UIView setAnimationsEnabled:oldState];
    };
    
    [UIView transitionWithView:window
                      duration:0.5f
                       options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:animation
                    completion:nil];
}

    
    
-(void)GoLoginWithUsr:(NSString *)usr pwd:(NSString *)pwd{
    
    NSLog(@"usr%@,pwd%@",usr,pwd);
    
    LoginViewModel *login = [LoginViewModel new];
    
    [login LoginWithUsr:usr WithPwd:pwd WithSuccessBlock:^(id SuccessValue) {
        
    } WithFailureBlock:^(id FailureValue) {
        
    }];
}


@end
