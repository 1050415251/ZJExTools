//
//  HUDUtils.swift
//  Brower
//
//  Created by Jia Jia 李华 on 2019/7/2.
//  Copyright © 2019 李华. All rights reserved.
//

import Foundation


import Foundation
//import MBProgressHUD

///显示hud
@objcMembers
open class HUDUtil:NSObject {


    @objc  public static var hud:MBProgressHUD!
    ///可以点击的hud
    @objc  public static var canclickhud:MBProgressHUD!

    @objc  public static var BindShowHUD:Int = 0///HUD展示数量



    ///初始化
    @objc class public func initHUD() {
        if hud != nil {
            hud.removeFromSuperview()
            hud = nil
        }
        if canclickhud != nil {
            canclickhud.removeFromSuperview()
            canclickhud = nil
        }


        hud = MBProgressHUD.init(view: UIApplication.shared.keyWindow!)
        UIApplication.shared.keyWindow!.addSubview(hud)


        canclickhud = MBProgressHUD.init(view: UIApplication.shared.keyWindow!)
        canclickhud.isUserInteractionEnabled = false
        UIApplication.shared.keyWindow!.addSubview(canclickhud)
    }

    ///显示hud
    @objc  class public func showHud(_ text:String? = nil) {

        hud.mode = MBProgressHUDModeIndeterminate
        hud.labelText = text
        hud.detailsLabelText = ""
        hud.show(false)

        BindShowHUD = BindShowHUD + 1


    }

    //    ///显示有交互的hud
    //    class func showHudBringUserinterfaceEnable() {
    //        if canclickhud == nil {
    //            canclickhud = MBProgressHUD.init(view: UIApplication.shared.keyWindow!)
    //            canclickhud.isUserInteractionEnabled = false
    //            UIApplication.shared.keyWindow!.addSubview(canclickhud)
    //        }
    //       // let hud: MBProgressHUD = MBProgressHUD.showAdded(to: UIApplication.shared.keyWindow!, animated: true)
    //        canclickhud.isUserInteractionEnabled = false
    //        canclickhud.bezelView.style = .solidColor
    //        canclickhud.mode = MBProgressHUDMode.indeterminate
    //        canclickhud.label.text = ""
    //        canclickhud.detailsLabel.text = ""
    //        canclickhud.bezelView.backgroundColor = UIUtils.makeColor(r: 255,    g: 255, b: 255, a: 0.0)
    //        canclickhud.show(animated: true)
    //    }
    //
    //    ///隐藏有交互的hud
    //    class func hideHudBringUserinterfaceEnable() {
    //        if canclickhud == nil {
    //            canclickhud = MBProgressHUD.init(view: UIApplication.shared.keyWindow!)
    //            canclickhud.isUserInteractionEnabled = false
    //            UIApplication.shared.keyWindow!.addSubview(canclickhud)
    //        }
    //        // let hud: MBProgressHUD = MBProgressHUD.showAdded(to: UIApplication.shared.keyWindow!, animated: true)
    //        if canclickhud != nil {
    //            canclickhud.hide(animated: true, afterDelay: 0.1)
    //        }
    //    }


    ///隐藏hud
    @objc  class public func hideHud(isForce: Bool = false) {
        if isForce {
            BindShowHUD = 0
        }
        BindShowHUD = BindShowHUD - 1

        if BindShowHUD <= 0 {
//            HUDUtil .hideHud()
            hud.hide(true)
        }
    }


    ///显示文字hud
    @objc class public func showHudWithText(text: String, delay: Double = 1.0) {
        if text == "" {
            return
        }

        DispatchQueue.main.async {
            let hud: MBProgressHUD = MBProgressHUD.showAdded(to: UIApplication.shared.keyWindow!, animated: true)
            hud.isUserInteractionEnabled = false
            hud.mode = MBProgressHUDModeText
            hud.yOffset = -50
            hud.detailsLabelText = text
            hud.detailsLabelFont = UIFont.boldSystemFont(ofSize: 15)
            hud.labelText = ""
////            hud.detailsLabel.text = text
//            hud.label.text = text
//            hud.detailsLabel.font = UIFont.boldSystemFont(ofSize: 15)
            hud.hide(true, afterDelay: delay)
        }

    }
}


/////显示hud
//@objcMembers
//public class HUDUtil:NSObject {
//
//
//    @objc  public static var hud:MBProgressHUD!
//    ///可以点击的hud
//    @objc  public static var canclickhud:MBProgressHUD!
//
//    @objc  public static var BindShowHUD:Int = 0///HUD展示数量
//
//
//
//    ///初始化
//    @objc class public func initHUD() {
//        if hud != nil {
//            hud.removeFromSuperview()
//            hud = nil
//        }
//        if canclickhud != nil {
//            canclickhud.removeFromSuperview()
//            canclickhud = nil
//        }
//
//
//        hud = MBProgressHUD.init(view: UIApplication.shared.keyWindow!)
//        UIApplication.shared.keyWindow!.addSubview(hud)
//
//
//        canclickhud = MBProgressHUD.init(view: UIApplication.shared.keyWindow!)
//        canclickhud.isUserInteractionEnabled = false
//        UIApplication.shared.keyWindow!.addSubview(canclickhud)
//    }
//
//    ///显示hud
//    @objc  class public func showHud(_ text:String? = nil) {
//
//        hud.mode = .indeterminate
//        hud.label.text = ""
//        hud.detailsLabel.text = ""
//        hud.show(animated: false)
//
//        BindShowHUD = BindShowHUD + 1
//
//
//    }
//
//    //    ///显示有交互的hud
//    //    class func showHudBringUserinterfaceEnable() {
//    //        if canclickhud == nil {
//    //            canclickhud = MBProgressHUD.init(view: UIApplication.shared.keyWindow!)
//    //            canclickhud.isUserInteractionEnabled = false
//    //            UIApplication.shared.keyWindow!.addSubview(canclickhud)
//    //        }
//    //       // let hud: MBProgressHUD = MBProgressHUD.showAdded(to: UIApplication.shared.keyWindow!, animated: true)
//    //        canclickhud.isUserInteractionEnabled = false
//    //        canclickhud.bezelView.style = .solidColor
//    //        canclickhud.mode = MBProgressHUDMode.indeterminate
//    //        canclickhud.label.text = ""
//    //        canclickhud.detailsLabel.text = ""
//    //        canclickhud.bezelView.backgroundColor = UIUtils.makeColor(r: 255,    g: 255, b: 255, a: 0.0)
//    //        canclickhud.show(animated: true)
//    //    }
//    //
//    //    ///隐藏有交互的hud
//    //    class func hideHudBringUserinterfaceEnable() {
//    //        if canclickhud == nil {
//    //            canclickhud = MBProgressHUD.init(view: UIApplication.shared.keyWindow!)
//    //            canclickhud.isUserInteractionEnabled = false
//    //            UIApplication.shared.keyWindow!.addSubview(canclickhud)
//    //        }
//    //        // let hud: MBProgressHUD = MBProgressHUD.showAdded(to: UIApplication.shared.keyWindow!, animated: true)
//    //        if canclickhud != nil {
//    //            canclickhud.hide(animated: true, afterDelay: 0.1)
//    //        }
//    //    }
//
//
//    ///隐藏hud
//    @objc  class public func hideHud(isForce: Bool = false) {
//        if isForce {
//            BindShowHUD = 0
//        }
//        BindShowHUD = BindShowHUD - 1
//
//        if BindShowHUD <= 0 {
//            //            HUDUtil .hideHud()
//            hud.hide(animated: true)
//        }
//    }
//
//
//    ///显示文字hud
//    @objc class public func showHudWithText(text: String, delay: Double = 1.0) {
//        if text == "" {
//            return
//        }
//
//        DispatchQueue.main.async {
//            let hud: MBProgressHUD = MBProgressHUD.showAdded(to: UIApplication.shared.keyWindow!, animated: false)
//            hud.isUserInteractionEnabled = false
//            hud.mode = MBProgressHUDMode.text
//            hud.offset.y = -50
//            hud.detailsLabel.text = text
//            hud.detailsLabel.font = UIFont.boldSystemFont(ofSize: 15)
//            hud.label.text = ""
//
//            hud.hide(animated: true, afterDelay: delay)
//        }
//
//    }
//}
