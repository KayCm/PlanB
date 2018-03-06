//
//  CacheRequestManager.m
//  NativeVideoTemplet
//
//  Created by KayCM on 2018/1/15.
//  Copyright © 2018年 KayCM. All rights reserved.
//

#import "CacheRequestManager.h"

@implementation CacheRequestManager

-(Boolean)CheckWithFileName:(NSString*)FileName{
    
    NSString *path = [NSHomeDirectory() stringByAppendingPathComponent:@"tmp"];
    
    NSString *filePath = [path stringByAppendingPathComponent:FileName];
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    return [fileManager fileExistsAtPath:filePath];
    
}

@end
