
//
//  SystemUtils.m
//  mjbrower
//
//  Created by Jia Jia 李华 on 2019/5/18.
//  Copyright © 2019 李华. All rights reserved.
//

#import "AppConfigTool.h"
#import <UIKit/UIKit.h>

#import <CoreTelephony/CTTelephonyNetworkInfo.h>  //为判断网络制式的主要文件
#import <CoreTelephony/CTCarrier.h>


#import <CommonCrypto/CommonCrypto.h>
#import "sys/utsname.h"

#import <StoreKit/StoreKit.h>

#define APPREVIEW @"appreviewwwwww"

//#import "MacroDefinition.h"
#define APPVersion [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]

@implementation AppConfigTool

+(void)load {
    [super load];
//    [AFNetworkReachabilityManager.sharedManager startMonitoring];
}

+ (void)requestReview {
   
    NSString * version = [NSUserDefaults.standardUserDefaults objectForKey: APPREVIEW];
    if (version && [version isEqualToString:APPVersion]) {
        return;
    }

    if (@available(iOS 10.3, *)) {
        [SKStoreReviewController requestReview];
    } else {
        // Fallback on earlier versions
    }
    [NSUserDefaults.standardUserDefaults setObject:APPVersion forKey:APPREVIEW];
    
}

+ (void)openUrl: (NSString *)url {
    NSURL * openurl = [NSURL URLWithString:url];
    if ([[openurl classForCoder] isEqual:[NSURL classForCoder]]) {
        if ([[UIApplication sharedApplication] canOpenURL:openurl]) {
            [[UIApplication sharedApplication]openURL:openurl options:@{} completionHandler:^(BOOL success) {
                
            }];
        }
    }
}

//+(AFNetworkReachabilityStatus)getCurrentNetStatus {
//    return [AFNetworkReachabilityManager sharedManager].networkReachabilityStatus;
//}

//网络状态
+(NSString *)getConnectType
{
    NSString * connectionType = @"999";
    
//    switch ([AFNetworkReachabilityManager sharedManager].networkReachabilityStatus) {
//        case AFNetworkReachabilityStatusReachableViaWWAN:{
//            connectionType = @"4";
//        }break;
//        case AFNetworkReachabilityStatusReachableViaWiFi:{
//            connectionType = @"100";
//        }break;
//        case AFNetworkReachabilityStatusUnknown:
//        case AFNetworkReachabilityStatusNotReachable:
//        default:{
//            connectionType = @"999";
//        }break;
//    }
    return connectionType;
}
// 获取运营商类型
+(NSString *)getOperatorsType
{
    CTTelephonyNetworkInfo *telephonyInfo = [CTTelephonyNetworkInfo new];
    CTCarrier *carrier = [telephonyInfo subscriberCellularProvider];
    NSString *currentCountryCode = [carrier mobileCountryCode];
    NSString *mobileNetWorkCode = [carrier mobileNetworkCode];
    //无网络
    if (![currentCountryCode isEqualToString:@"460"]) {
        return @"99";
    }
    //中国移动
    if ([mobileNetWorkCode isEqualToString:@"00"] ||
        [mobileNetWorkCode isEqualToString:@"02"] ||
        [mobileNetWorkCode isEqualToString:@"07"]) {
        return @"1";
    }
    //中国联通
    if ([mobileNetWorkCode isEqualToString:@"01"] ||
        [mobileNetWorkCode isEqualToString:@"06"] ||
        [mobileNetWorkCode isEqualToString:@"09"]) {
        return @"3";
    }
    //中国电信
    if ([mobileNetWorkCode isEqualToString:@"03"] ||
        [mobileNetWorkCode isEqualToString:@"05"] ||
        [mobileNetWorkCode isEqualToString:@"11"]) {
        return @"2";
    }
    //中国铁通
    if ([mobileNetWorkCode isEqualToString:@"20"]) {
        return @"99";
    }
    return @"99";
}
//设备类型
+(NSString *)iphoneType
{
    struct utsname systemInfo;
    uname(&systemInfo); // 获取系统设备信息
    NSString *platform = [NSString stringWithCString:systemInfo.machine encoding:NSASCIIStringEncoding];
    NSDictionary *dict = @{
                           // iPhone
                           @"iPhone5,3" : @"iPhone 5c",
                           @"iPhone5,4" : @"iPhone 5c",
                           @"iPhone6,1" : @"iPhone 5s",
                           @"iPhone6,2" : @"iPhone 5s",
                           @"iPhone7,1" : @"iPhone 6 Plus",
                           @"iPhone7,2" : @"iPhone 6",
                           @"iPhone8,1" : @"iPhone 6s",
                           @"iPhone8,2" : @"iPhone 6s Plus",
                           @"iPhone8,4" : @"iPhone SE",
                           @"iPhone9,1" : @"iPhone 7",
                           @"iPhone9,2" : @"iPhone 7 Plus",
                           @"iPhone10,1" : @"iPhone 8",
                           @"iPhone10,4" : @"iPhone 8",
                           @"iPhone10,2" : @"iPhone 8 Plus",
                           @"iPhone10,5" : @"iPhone 8 Plus",
                           @"iPhone10,3" : @"iPhone X",
                           @"iPhone10,6" : @"iPhone X",
                           @"iPhone11,2" : @"iPhone XS",
                           @"iPhone11,4" : @"iPhone XS Max",
                           @"iPhone11,6" : @"iPhone XS Max",
                           @"iPhone11,8" : @"iPhone XR",
                           @"i386" : @"iPhone Simulator",
                           @"x86_64" : @"iPhone Simulator",
                           @"iPad4,1" : @"iPad Air",
                           @"iPad4,2" : @"iPad Air",
                           @"iPad4,3" : @"iPad Air",
                           @"iPad5,3" : @"iPad Air 2",
                           @"iPad5,4" : @"iPad Air 2",
                           @"iPad6,7" : @"iPad Pro 12.9",
                           @"iPad6,8" : @"iPad Pro 12.9",
                           @"iPad6,3" : @"iPad Pro 9.7",
                           @"iPad6,4" : @"iPad Pro 9.7",
                           @"iPad6,11" : @"iPad 5",
                           @"iPad6,12" : @"iPad 5",
                           @"iPad7,1" : @"iPad Pro 12.9 inch 2nd gen",
                           @"iPad7,2" : @"iPad Pro 12.9 inch 2nd gen",
                           @"iPad7,3" : @"iPad Pro 10.5",
                           @"iPad7,4" : @"iPad Pro 10.5",
                           @"iPad7,5" : @"iPad 6",
                           @"iPad7,6" : @"iPad 6",
                           // iPad mini
                           @"iPad2,5" : @"iPad mini",
                           @"iPad2,6" : @"iPad mini",
                           @"iPad2,7" : @"iPad mini",
                           @"iPad4,4" : @"iPad mini 2",
                           @"iPad4,5" : @"iPad mini 2",
                           @"iPad4,6" : @"iPad mini 2",
                           @"iPad4,7" : @"iPad mini 3",
                           @"iPad4,8" : @"iPad mini 3",
                           @"iPad4,9" : @"iPad mini 3",
                           @"iPad5,1" : @"iPad mini 4",
                           @"iPad5,2" : @"iPad mini 4",
                           // Apple Watch
                           @"Watch1,1" : @"Apple Watch",
                           @"Watch1,2" : @"Apple Watch",
                           @"Watch2,6" : @"Apple Watch Series 1",
                           @"Watch2,7" : @"Apple Watch Series 1",
                           @"Watch2,3" : @"Apple Watch Series 2",
                           @"Watch2,4" : @"Apple Watch Series 2",
                           @"Watch3,1" : @"Apple Watch Series 3",
                           @"Watch3,2" : @"Apple Watch Series 3",
                           @"Watch3,3" : @"Apple Watch Series 3",
                           @"Watch3,4" : @"Apple Watch Series 3",
                           @"Watch4,1" : @"Apple Watch Series 4",
                           @"Watch4,2" : @"Apple Watch Series 4",
                           @"Watch4,3" : @"Apple Watch Series 4",
                           @"Watch4,4" : @"Apple Watch Series 4"
                           };
    NSString *name = dict[platform];
    return name ? name : platform;
}


@end
