//
//  ZJKit+Animation.swift
//  FriendlyBrowser
//
//  Created by 李天 on 2019/10/28.
//  Copyright © 2019 Anchoriter. All rights reserved.
//

import Foundation
import UIKit

extension CAAnimation: ZJAnimationLayout {
    
    
}

extension ZJAnimationLayout where Self: CABasicAnimation {
    
    @discardableResult
    func set_Basic(fromValue: Any?) -> CABasicAnimation {
        self.fromValue = fromValue
        return self
    }
    
    @discardableResult
    func set_Basic(toValue: Any?) -> CABasicAnimation {
        self.toValue = toValue
        return self
    }
    
    @discardableResult
    func set_Basic(duration: CFTimeInterval) -> CABasicAnimation {
        self.duration = duration
        return self
    }
    
    @discardableResult
    func set_Basic(autoreverses: Bool) -> CABasicAnimation {
        self.autoreverses = autoreverses
        return self
    }
    
    @discardableResult
    func set_Basic(fillMode: CAMediaTimingFillMode) -> CABasicAnimation {
        self.fillMode = fillMode
        return self
    }
    
    
    //common
    @discardableResult
    func set_Basic(repeatCount: Float) -> CABasicAnimation {
        self.repeatCount = repeatCount
        return self
    }
    
    
}
