//
//  ZJKit+Layer.swift
//  FriendlyBrowser
//
//  Created by 李天 on 2019/10/22.
//  Copyright © 2019 Anchoriter. All rights reserved.
//

import Foundation
import UIKit


//MARK: CALayer
extension CALayer: ZJLayerLayout {
   
  
    
    //common
    @discardableResult
    func set(bgcolor: CGColor) -> CALayer {
        self.backgroundColor = bgcolor
        return self
    }
    
    @discardableResult
    func set(alpha: Float) -> CALayer {
        self.opacity = alpha
        return self
    }
    
    @discardableResult
    func set(isHideen: Bool) -> CALayer {
        self.isHidden = isHideen
        return self
    }
    
    @discardableResult
    func set(frame: CGRect) -> CALayer {
        if self.frame != frame {
            self.frame = frame
        }
        return self
    }
    
    @discardableResult
    func set(origin: CGPoint) -> CALayer {
        self.frame.origin = origin
        return self
    }
    
    @discardableResult
    func set(x: CGFloat) -> CALayer {
        self.frame.origin.x = x
        return self
    }
    
    @discardableResult
    func set(y: CGFloat) -> CALayer {
        self.frame.origin.y = y
        return self
    }
    
    @discardableResult
    func set(size: CGSize) -> CALayer {
        self.frame.size = size
        return self
    }
    
    @discardableResult
    func set(width: CGFloat) -> CALayer {
        self.frame.size.width = width
        return self
    }
    
    @discardableResult
    func set(height: CGFloat) -> CALayer {
        self.frame.size.height = height
        return self
    }
    
    @discardableResult
    func set(cornerRadius: CGFloat) -> CALayer {
        self.cornerRadius = cornerRadius
        return self
    }
    
    @discardableResult
    func set(masksToBounds: Bool) -> CALayer {
        self.masksToBounds = masksToBounds
        return self
    }
    
    @discardableResult
    func set(borderWidth: CGFloat) -> CALayer {
        self.borderWidth = borderWidth
        return self
    }
    
    @discardableResult
    func set(borderColor: CGColor?) -> CALayer {
        self.borderColor = borderColor
        return self
    }
    
    @discardableResult
    func set(contents: Any?) -> CALayer {
        self.contents = contents
        return self
    }
    
}

extension ZJLayerLayout where Self: CAGradientLayer {

    func set_Gradient(colors: [Any]?) -> CAGradientLayer {
        self.colors = colors
        return self
    }
    
    func set_Gradient(locations: [NSNumber]?) -> CAGradientLayer {
        self.locations = locations
        return self
    }
    
    func set_Gradient(startPoint: CGPoint) -> CAGradientLayer {
        self.startPoint = startPoint
        return self
    }
    
    func set_Gradient(endPoint: CGPoint) -> CAGradientLayer {
        self.endPoint = endPoint
        return self
    }
    
    func set_Gradient(type: CAGradientLayerType) -> CAGradientLayer {
        self.type = type
        return self
    }
    
    
    
    //common
    @discardableResult
    func set_Gradient(bgcolor: CGColor) -> CAGradientLayer {
        self.backgroundColor = bgcolor
        return self
    }
    
    @discardableResult
    func set_Gradient(alpha: Float) -> CAGradientLayer {
        self.opacity = alpha
        return self
    }
    
    @discardableResult
    func set_Gradient(isHideen: Bool) -> CAGradientLayer {
        self.isHidden = isHideen
        return self
    }
    
    @discardableResult
    func set_Gradient(frame: CGRect) -> CAGradientLayer {
        self.frame = frame
        return self
    }
    
    @discardableResult
    func set_Gradient(origin: CGPoint) -> CAGradientLayer {
        self.frame.origin = origin
        return self
    }
    
    @discardableResult
    func set_Gradient(x: CGFloat) -> CAGradientLayer {
        self.frame.origin.x = x
        return self
    }
    
    @discardableResult
    func set_Gradient(y: CGFloat) -> CAGradientLayer {
        self.frame.origin.y = y
        return self
    }
    
    @discardableResult
    func set_Gradient(size: CGSize) -> CAGradientLayer {
        self.frame.size = size
        return self
    }
    
    @discardableResult
    func set_Gradient(width: CGFloat) -> CAGradientLayer {
        self.frame.size.width = width
        return self
    }
    
    @discardableResult
    func set_Gradient(height: CGFloat) -> CAGradientLayer {
        self.frame.size.height = height
        return self
    }
    
    @discardableResult
    func set_Gradient(cornerRadius: CGFloat) -> CAGradientLayer {
        self.cornerRadius = cornerRadius
        return self
    }
    
    @discardableResult
    func set_Gradient(masksToBounds: Bool) -> CAGradientLayer {
        self.masksToBounds = masksToBounds
        return self
    }
    
    @discardableResult
    func set_Gradient(borderWidth: CGFloat) -> CAGradientLayer {
        self.borderWidth = borderWidth
        return self
    }
    
    @discardableResult
    func set_Gradient(borderColor: CGColor?) -> CAGradientLayer {
        self.borderColor = borderColor
        return self
    }

}

