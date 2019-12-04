//
//  Ex+UIView.swift
//  FriendlyBrowser
//
//  Created by ZJ on 2019/10/22.
//  Copyright © 2019 Anchoriter. All rights reserved.
//

import Foundation
import UIKit

//MARK: ZJKit
protocol ZJLayout {
    
    @discardableResult
    func set(bgcolor: UIColor) -> UIView
    
    @discardableResult
    func set(alpha: CGFloat) -> UIView
    
    @discardableResult
    func set(isHideen: Bool) -> UIView
    
    @discardableResult
    func set(frame: CGRect) -> UIView
    
    @discardableResult
    func set(origin: CGPoint) -> UIView
    
    @discardableResult
    func set(x: CGFloat) -> UIView
    
    @discardableResult
    func set(y: CGFloat) -> UIView
    
    @discardableResult
    func set(size: CGSize) -> UIView
    
    @discardableResult
    func set(width: CGFloat) -> UIView
    
    @discardableResult
    func set(height: CGFloat) -> UIView
    
    @discardableResult
    func set(isUserInteractionEnabled: Bool) -> UIView
}


protocol ZJLayerLayout {
    
    @discardableResult
    func set(bgcolor: CGColor) -> CALayer
    
    @discardableResult
    func set(alpha: Float) -> CALayer
    
    @discardableResult
    func set(isHideen: Bool) -> CALayer
    
    @discardableResult
    func set(frame: CGRect) -> CALayer
    
    @discardableResult
    func set(origin: CGPoint) -> CALayer
    
    @discardableResult
    func set(x: CGFloat) -> CALayer
    
    @discardableResult
    func set(y: CGFloat) -> CALayer
    
    @discardableResult
    func set(size: CGSize) -> CALayer
    
    @discardableResult
    func set(width: CGFloat) -> CALayer
    
    @discardableResult
    func set(height: CGFloat) -> CALayer
    
    func set(borderWidth: CGFloat) -> CALayer 
    
    func set(borderColor: CGColor?) -> CALayer
}

protocol ZJAnimationLayout {
    
    
    
}
