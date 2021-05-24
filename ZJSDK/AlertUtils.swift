//
//  GSAlertUtils.swift
//  Brower
//
//  Created by ZJ on 2019/6/28.
//  Copyright © 2019 ZJ. All rights reserved.
//

import Foundation
import UIKit

func AppTopVC(vc: UIViewController?) -> UIViewController? {
    if let prevc  = vc?.presentedViewController  {
        return AppTopVC(vc: prevc)
    }
    return vc
}

@objcMembers
open class AlertUtils: NSObject {
    
    
    /// 系统alert方法  封装
    ///
    /// - Parameters:
    ///   - title: title
    ///   - message: message
    ///   - leftText: 左面文字
    ///   - rightText: 右面文字
    ///   - leftclick: 左面点击回调 可为nil
    ///   - rightclick: 右面点击回调
    open class func showAlert(title: String? ,message: String?, leftText: String?,rightText: String?,leftclick: (()->Void)?,rightclick: (()->Void)?) {
        
        let alertVC = UIAlertController.init(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let leftAction = UIAlertAction.init(title: leftText, style: UIAlertAction.Style.default) { (action) in
            leftclick?()
        }
        
        let rightAction = UIAlertAction.init(title: rightText, style: UIAlertAction.Style.default) { (action) in
            rightclick?()
        }
        
        alertVC.addAction(leftAction)
        alertVC.addAction(rightAction)
        
        AppTopVC(vc: UIApplication.shared.keyWindow?.rootViewController)?.present(alertVC, animated: true, completion: nil)
        
    }
    
    
    /// iPhone Alert，  sheet方法
    ///
    /// - Parameters:
    ///   - title: -
    ///   - message: -
    ///   - menus: string：闭包的数组 string为菜单文字 闭包为点击后的回调
    ///   - destructiveIndex: 变红的idnex 默认为-1 那个都不变红
    open class func showAlertSheet(title: String?,message: String?,menus:[[String: (()->Void)?]],destructiveIndex: Int) {
        let alertVC = UIAlertController.init(title: title, message: message, preferredStyle: UIAlertController.Style.actionSheet)
  
        alertVC.addAction(UIAlertAction.init(title: "取消", style: UIAlertAction.Style.cancel, handler: nil))
        
        for (index,menu) in menus.enumerated() {
            var style:UIAlertAction.Style = .default
            if (destructiveIndex == index) {
                style = .destructive
            }
            let action = UIAlertAction.init(title: menu.keys.first, style: style) { (action) in
                if let callback = menu.values.first {
                    callback?()
                }
            }
            alertVC .addAction(action)
        }
        
        AppTopVC(vc: UIApplication.shared.keyWindow?.rootViewController)?.present(alertVC, animated: true, completion: nil)
    }
    
    
    /// iPad展示的sheet Alert
    ///
    /// - Parameters:
    ///   - superV: 父view
    ///   - rect: 位置
    ///   - arrowDirections: 方向
    ///   - title: -
    ///   - message: -
    ///   - menus: string：闭包的数组 string为菜单文字 闭包为点击后的回调
    ///   - destructiveIndex: 变红的idnex 默认为-1 那个都不变红
    open class func showAlertPopVerSuperV(_ superV: UIView,rect: CGRect,arrowDirections: UIPopoverArrowDirection, title: String?,message: String?,menus:[[String: (()->Void)?]],destructiveIndex: Int) {
        
        let alertVC = UIAlertController.init(title: title, message: message, preferredStyle: UIAlertController.Style.actionSheet)
        
        alertVC.addAction(UIAlertAction.init(title: "取消", style: UIAlertAction.Style.cancel, handler: nil))
        
        for (index,menu) in menus.enumerated() {
            var style:UIAlertAction.Style = .default
            if (destructiveIndex == index) {
                style = .destructive
            }
            let action = UIAlertAction.init(title: menu.keys.first, style: style) { (action) in
                if let callback = menu.values.first {
                    callback?()
                }
            }
            alertVC .addAction(action)
        }
   
        if alertVC.responds(to: #selector(getter: UIAlertController.popoverPresentationController)) {
            alertVC.popoverPresentationController?.sourceView = superV
            alertVC.popoverPresentationController?.sourceRect = rect
            alertVC.popoverPresentationController?.permittedArrowDirections = arrowDirections
        }
        
        
        AppTopVC(vc: UIApplication.shared.keyWindow?.rootViewController)?.present(alertVC, animated: true, completion: nil)
        
    }
    
    /// iPhone Alert，  sheet方法
    ///
    /// - Parameters:
    ///   - title: -
    ///   - message: -
    ///   - menus: string：闭包的数组 string为菜单文字 闭包为点击后的回调
    ///   - destructiveIndex: 变红的idnex 默认为-1 那个都不变红
    open class func showAlertTextField(title: String?,message: String?,placeHolder:String?,content:String,complete:((String?)->Void)?) {
        let alertVC = UIAlertController.init(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alertVC.addTextField {
            $0.placeholder = placeHolder
            $0.text = content
            $0.clearButtonMode = .whileEditing
            $0.selectAll(nil)
        }
        
        alertVC.addAction(UIAlertAction.init(title: "确定", style: UIAlertAction.Style.default, handler: { _ in
            if let textField = alertVC.textFields?.first {
                complete?(textField.text)
            }
        }))

        alertVC.addAction(UIAlertAction.init(title: "取消", style: UIAlertAction.Style.cancel, handler: nil))
        
        AppTopVC(vc: UIApplication.shared.keyWindow?.rootViewController)?.present(alertVC, animated: true, completion: nil)
    }
    
    
    open class func dismissAlertViewController() {
        if let vc = AppTopVC(vc: UIApplication.shared.keyWindow?.rootViewController),let alert = vc.presentingViewController {
            alert .dismiss(animated: true, completion: nil)
        }
    }
    
}
