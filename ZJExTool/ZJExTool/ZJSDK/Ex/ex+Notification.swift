//
//  ex+Noicetion.swift
//  CYJBrowser
//
//  Created by ZJ on 2019/12/4.
//  Copyright © 2019 ZJ. All rights reserved.
//

import Foundation

extension Notification.Name: ExpressibleByStringLiteral {
    
    public typealias StringLiteralType = String

     public init(stringLiteral value: StringLiteralType) {
        let notice = Notification.Name.init(value)
        self = notice
     }
}
