//
//  CacheRequestManager.h
//  NativeVideoTemplet
//
//  Created by KayCM on 2018/1/15.
//  Copyright © 2018年 KayCM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CacheRequestManager : NSObject


/**
 检查文件是否存在

 @param FileName 需检查的文件名
 @return 结果
 */
-(Boolean)CheckWithFileName:(NSString*)FileName;

@end
