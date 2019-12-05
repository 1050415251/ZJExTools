//
//  CYJCommon.swift
//  CYJBrowser
//
//  Created by ZJ on 2019/11/19.
//  Copyright © 2019 ZJ. All rights reserved.
//

import Foundation
import UIKit

//public let APP = UIApplication.shared.delegate as! AppDelegate
//ppp
public let APPVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? "1.0"

/// iPhone 为 True 其他为 False
public let isiPhone: Bool = UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone

public var statusBarH: CGFloat {
    get {
        if #available(iOS 13.0, *) {
            return UIApplication.shared.windows.first?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
        } else {
            // Fallback on earlier versions
            return UIApplication.shared.statusBarFrame.height
        }
    }
}

//状态栏
public var statusBarHidden: Bool {
    get {
        if #available(iOS 13.0, *) {
            return  UIApplication.shared.windows.first?.windowScene?.statusBarManager?.isStatusBarHidden ?? false
        } else {
            // Fallback on earlier versions
            return UIApplication.shared.isStatusBarHidden
        }///YES隐藏  NO出现
    }
}

public let APPVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? "1.0"


public func ITUNES_LINK(APPID: String) -> String {
    return "https://itunes.apple.com/cn/app/id\(APPID)?mt=8"
}


public var SAFERA_left: CGFloat {
    if #available(iOS 11.0, *) {
        return UIApplication.shared.windows.first?.safeAreaInsets.left ?? 0
    }
   
    return 0;
}

public var SCREEN_width: CGFloat {
    
    return UIScreen.main.bounds.size.width
}

public var SCREEN_height: CGFloat {
    
    return UIScreen.main.bounds.size.height
}


public var SAFERA_right:CGFloat {
    if #available(iOS 11.0, *) {
        return UIApplication.shared.windows.first?.safeAreaInsets.right ?? 0
    }
    return 0;
}


public var SAFERA_bottom: CGFloat {
    if #available(iOS 11.0, *) {
        return UIApplication.shared.windows.first?.safeAreaInsets.bottom ?? 0
    }
    
    return 0;
}

public var SAFERA_top:CGFloat {
    if #available(iOS 11.0, *) {
        return UIApplication.shared.windows.first?.safeAreaInsets.top ?? 0
    }
    return 0;
}
