//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Shawn Baugh on 4/21/19.
//  Copyright © 2019 Shawn Baugh. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    
    func updateViews(category: Category) {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
