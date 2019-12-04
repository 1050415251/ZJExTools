//
//  ex+Data.swift
//  Brower
//
//  Created by 李天 on 2019/6/25.
//  Copyright © 2019 李天. All rights reserved.
//

import Foundation

/// 取document沙盒文件 沙盒没有取Bundle
extension Data  {
    

    
    /// 只有成功写入文件才会返回true
    ///
    /// - Parameter path: 路径
    /// - Returns: 是否执行写入操作
    @discardableResult
    func writeToFile(path: String) -> Bool {
        let isExist = FileManager.default .fileExists(atPath: path.documentPath())
        if isExist {
            let olddata = NSData.init(contentsOfFile: path.documentPath()) as Data?
            if !(olddata == self) {
                try? self .write(to: URL.init(fileURLWithPath: path.documentPath()), options: Data.WritingOptions.atomicWrite)
                return true
            }
        }else {
            try? self .write(to: URL.init(fileURLWithPath: path.documentPath()), options: Data.WritingOptions.atomicWrite)
            return true
        }
        return false
    }
    
    
}
