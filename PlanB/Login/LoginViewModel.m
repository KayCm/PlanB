//
//  LoginViewModel.m
//  PlanB
//
//  Created by Meng on 2018/3/7.
//  Copyright © 2018年 KayCM. All rights reserved.
//

#import "LoginViewModel.h"
#import "NetRequestManager.h"

@implementation LoginViewModel

-(void)LoginWithUsr:(NSString *)usr WithPwd:(NSString *)pwd WithSuccessBlock:(void (^)(id))SuccessBlock WithFailureBlock:(void (^)(id))FailureBlock{
    
    NetRequestManager *net = [NetRequestManager new];
    
    NSDictionary *dict = @{@"username":usr,@"password":pwd,};
    
    [net RequestWithPostInUrl:@"http://member.api.qcfq.com/login.jhtml" WithPostDict:dict WithSuccessBlock:^(id NetResultSuccessValue) {
        
        NSLog(@"%@",NetResultSuccessValue);
        
    } WithFailureBlock:^(id NetResultFailureValue) {
        NSLog(@"%@",NetResultFailureValue);
    } WithErrorBlock:^(id NetResultFailureValue) {
        NSLog(@"%@",NetResultFailureValue);
    }];
    
}
    
@end
