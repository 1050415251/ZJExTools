//
//  UIUtils.swift
//  GTEDai
//
//  Created by ZJ on 2018/1/16.
//  Copyright © 2018年 ZJ All rights reserved.
//

import Foundation
import UIKit


/// 颜色构造
open class UIUtils {


    public class func makeColor(r:CGFloat,g:CGFloat,b:CGFloat,a:CGFloat = 1.0) -> UIColor {
        return UIColor.init(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
    }

}























