//
//  ex+UIView.swift
//  CustomFile
//
//  Created by ZJ on 2018/9/12.
//  Copyright © 2018年 ZJ. All rights reserved.
//

import Foundation
import UIKit

extension UIView {

    public func drawImage() -> UIImage? {
        let size = self.bounds.size
        UIGraphicsBeginImageContextWithOptions(size, false, UIScreen.main.scale)
        if let context = UIGraphicsGetCurrentContext() {
            self.layer.render(in: context)
        }
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }

    public func getController() -> UIViewController? {
        var responder:UIResponder? = self;
        while (responder != nil){
            if responder? .isKind(of: UIViewController.classForCoder()) ?? false {
                return responder as? UIViewController
            }
            responder = responder?.next

        }
   
        return nil;
        
    }
    
}
