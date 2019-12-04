//
//  CYJCommon.swift
//  CYJBrowser
//
//  Created by 王铁柱 on 2019/11/19.
//  Copyright © 2019 王铁柱. All rights reserved.
//

import Foundation
import UIKit

let APP = UIApplication.shared.delegate as! AppDelegate

let APPVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? "1.0"

/// iPhone 为 True 其他为 False
let isiPhone: Bool = UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone

var statusBarH: CGFloat {
    get {
        if #available(iOS 13.0, *) {
            return UIApplication.shared.windows.first?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
        } else {
            // Fallback on earlier versions
            return UIApplication.shared.statusBarFrame.height
        }
    }
}

////状态栏
//var statusBarHidden: Bool {
//    get {
//        if #available(iOS 13.0, *) {
//            return  UIApplication.shared.windows.first?.windowScene?.statusBarManager?.isStatusBarHidden ?? false
//        } else {
//            // Fallback on earlier versions
//            return UIApplication.shared.isStatusBarHidden
//        }///YES隐藏  NO出现
//    }
//}

//let APPVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? "1.0"

func ITUNES_LINK(APPID: String) -> String {
    return "https://itunes.apple.com/cn/app/id\(APPID)?mt=8"
}


var SAFERA_left: CGFloat {
    if #available(iOS 11.0, *) {
        return UIApplication.shared.windows.first?.safeAreaInsets.left ?? 0
    }
   
    return 0;
}

var SCREEN_width: CGFloat {
    
    return UIScreen.main.bounds.size.width
}

var SCREEN_height: CGFloat {
    
    return UIScreen.main.bounds.size.height
}


var SAFERA_right:CGFloat {
    if #available(iOS 11.0, *) {
        return UIApplication.shared.windows.first?.safeAreaInsets.right ?? 0
    }
    return 0;
}


var SAFERA_bottom: CGFloat {
    if #available(iOS 11.0, *) {
        return UIApplication.shared.windows.first?.safeAreaInsets.bottom ?? 0
    }
    
    return 0;
}

var SAFERA_top:CGFloat {
    if #available(iOS 11.0, *) {
        return UIApplication.shared.windows.first?.safeAreaInsets.top ?? 0
    }
    return 0;
}
