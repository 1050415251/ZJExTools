//
//  extension+UIImage.swift
//  CustomFile
//
//  Created by 国投 on 2018/9/12.
//  Copyright © 2018年 FlyKite. All rights reserved.
//

import Foundation
import UIKit

extension UIImage {

    public func bluredImage() -> UIImage {
        return self.bluredImage(20)
    }

    public func bluredImage(_ radius: CGFloat) -> UIImage {

        let originImage = CIImage(cgImage: self.cgImage!)

        let filter = CIFilter(name: "CIGaussianBlur")
        filter?.setValue(originImage, forKey: kCIInputImageKey)
        filter?.setValue(NSNumber(value: Float(radius)), forKey: kCIInputRadiusKey)

        let context = CIContext(options: nil)
        let result = filter?.value(forKey: kCIOutputImageKey) as! CIImage
        let blurImage = UIImage(cgImage: context.createCGImage(result, from: originImage.extent)!)

        return blurImage
    }

    class public func createImageWithColor(_ color:UIColor,size:CGSize)  -> UIImage? {
        let rect = CGRect.init(x: 0, y: 0, width: size.width , height: size.height)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context?.setFillColor(color.cgColor)
        context?.fill(rect)
        let img = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return img
    }
    
    public func reSizeimage(edge: CGFloat) -> UIImage {

//        let size = CGSize.init(width: self.size.width - edge*2, height: self.size.height - edge*2)
        guard let sourceImageRef = self.cgImage else { return self }
        guard let newimageRef = sourceImageRef.cropping(to: CGRect.init(origin: CGPoint.zero, size: self.size).insetBy(dx: edge, dy: edge)) else { return self }
        return UIImage.init(cgImage: newimageRef) 

    }


}
