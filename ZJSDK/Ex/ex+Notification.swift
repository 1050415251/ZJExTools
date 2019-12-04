//
//  ex+Noicetion.swift
//  CYJBrowser
//
//  Created by 王铁柱 on 2019/12/4.
//  Copyright © 2019 王铁柱. All rights reserved.
//

import Foundation

extension Notification.Name: ExpressibleByStringLiteral {
    
    public typealias StringLiteralType = String

     public init(stringLiteral value: StringLiteralType) {
        let notice = Notification.Name.init(value)
        self = notice
     }
}
