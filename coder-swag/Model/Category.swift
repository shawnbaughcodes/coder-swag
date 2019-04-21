//
//  Category.swift
//  coder-swag
//
//  Created by Shawn Baugh on 4/21/19.
//  Copyright © 2019 Shawn Baugh. All rights reserved.
//

import Foundation
struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
