//
//  SystemUtils.h
//  mjbrower
//
//  Created by ZJ on 2019/5/18.
//  Copyright © 2019 ZJ All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "AFNetworking.h"

NS_ASSUME_NONNULL_BEGIN

@interface AppConfigTool : NSObject

/// 打开某个地址
+ (void)openUrl: (NSString *)url;

/// 去hp window
+ (void)requestReview API_AVAILABLE(ios(10.3), macos(10.14)) __TVOS_PROHIBITED;

/// iPhone类型
+(NSString *)iphoneType;

/// 获取运营商类型
+(NSString *)getOperatorsType;




@end

NS_ASSUME_NONNULL_END
