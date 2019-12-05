//
//  ex+URL.swift
//  CustomFile
//
//  Created by ZJ on 2019/3/14.
//  Copyright © 2019 ZJ. All rights reserved.
//

import Foundation

extension URL: ExpressibleByStringLiteral {

    public typealias StringLiteralType = String

    public init(stringLiteral value: StringLiteralType) {
        let url = URL.init(string: value)!
        self = url
    }


}

