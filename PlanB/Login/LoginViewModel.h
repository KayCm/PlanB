//
//  LoginViewModel.h
//  PlanB
//
//  Created by Meng on 2018/3/7.
//  Copyright © 2018年 KayCM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LoginViewModel : NSObject


    
/**
 登录

 @param usr 用户名
 @param pwd 密码
 @param SuccessBlock 成功后
 @param FailureBlock 失败后
 */
-(void)LoginWithUsr:(NSString*)usr
            WithPwd:(NSString*)pwd
   WithSuccessBlock:(void(^)(id SuccessValue))  SuccessBlock
   WithFailureBlock:(void(^)(id FailureValue))  FailureBlock;
    
@end
