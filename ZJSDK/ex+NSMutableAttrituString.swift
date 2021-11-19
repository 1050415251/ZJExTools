//
//  ex+NSMutableAttrituString.swift
//  CustomFile
//
//  Created by ZJ on 2018/9/12.
//  Copyright © 2018年 ZJ. All rights reserved.
//

import Foundation
import UIKit

extension NSMutableAttributedString {

    public func fitAttributedHeight(padding: CGFloat,width:CGFloat) -> CGFloat {

        let bounds = self.boundingRect(with: CGSize(width: width, height: CGFloat(MAXFLOAT)),
                                       options: [.usesLineFragmentOrigin, .usesFontLeading, .usesDeviceMetrics],
                                       context: nil)
        return ceil(bounds.height + padding * 2)

    }


    public func fitWidth(padding: CGFloat,height:CGFloat) -> CGFloat {

        let bounds = self.boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: height),
                                       options: NSStringDrawingOptions.usesLineFragmentOrigin,
                                       context: nil)
        return ceil(bounds.width + padding * 2)

    }
}
