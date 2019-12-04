//
//  SystemUtils.h
//  mjbrower
//
//  Created by Jia Jia 李华 on 2019/5/18.
//  Copyright © 2019 李华. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "AFNetworking.h"

NS_ASSUME_NONNULL_BEGIN

@interface AppConfigTool : NSObject


+ (void)openUrl: (NSString *)url;

+ (void)requestReview;

+(NSString *)iphoneType;

+(NSString *)getOperatorsType;

+(NSString *)getConnectType;

//+(AFNetworkReachabilityStatus)getCurrentNetStatus;


@end

NS_ASSUME_NONNULL_END
