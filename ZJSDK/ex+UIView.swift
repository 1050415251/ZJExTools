//
//  ex+UIView.swift
//  CustomFile
//
//  Created by 国投 on 2018/9/12.
//  Copyright © 2018年 FlyKite. All rights reserved.
//

import Foundation
import UIKit

extension UIView {

    func drawImage() -> UIImage? {
        let size = self.bounds.size
        UIGraphicsBeginImageContextWithOptions(size, false, UIScreen.main.scale)
        if let context = UIGraphicsGetCurrentContext() {
            self.layer.render(in: context)
        }
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }

    func getController() -> UIViewController? {
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
