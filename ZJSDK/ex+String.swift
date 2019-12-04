//
//  ex+String.swift
//  CustomFile
//
//  Created by 国投 on 2018/9/12.
//  Copyright © 2018年 FlyKite. All rights reserved.
//

import Foundation
import UIKit

extension String {

    public var length: Int {
        return self.count
    }

    public var dateValue: Date? {
        get {
            let fmt = DateFormatter()
            fmt.dateFormat = "yyyy/MM/dd HH:mm:ss"
            fmt.timeZone = TimeZone.current
            if let date = fmt.date(from: self) {
                return date
            }
            fmt.dateFormat = "yyyy-MM-dd HH:mm:ss"
            if let date = fmt.date(from: self) {
                return date
            }
            fmt.dateFormat = "yyyy-MM-dd"
            if let date = fmt.date(from: self) {
                return date
            }
            return Date(timeIntervalSince1970: Double(self)! / 1000)
        }
    }

  

    public func fitHeight(padding: CGFloat,width:CGFloat,font: UIFont) -> CGFloat {

        let bounds = self.boundingRect(with: CGSize(width: width, height: CGFloat(MAXFLOAT)),
                                       options: NSStringDrawingOptions.usesLineFragmentOrigin,
                                       attributes: [NSAttributedString.Key.font: font],
                                       context: nil)
        return ceil(bounds.height + padding * 2)
    }

    public func fitWidth(padding: CGFloat,height: CGFloat,font: UIFont) -> CGFloat {

        let bounds = self.boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: height),
                                       options: NSStringDrawingOptions.usesLineFragmentOrigin,
                                       attributes: [NSAttributedString.Key.font: font],
                                       context: nil)
        return  ceil(bounds.width + padding * 2)
    }
    
    public func documentPath() -> String {
        let diskPath = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)[0] + "/" + self
        return diskPath
    }
    
    public func bundlePath() -> String {
      let bundlePath = Bundle.main.resourcePath! + "/" + self
      return bundlePath
    }
    
    public func readData() -> Data? {
//        return nil
        let diskPath = self.documentPath()
        let diskdata:Data? =  NSData.init(contentsOfFile: diskPath) as Data?
        var bundledata: Data?
        if diskdata == nil {
            let bundlePath = self.bundlePath()
            bundledata = NSData.init(contentsOfFile: bundlePath) as Data?
        }
        return diskdata ?? (bundledata ?? Data())
    }
    

}
