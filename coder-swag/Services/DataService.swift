//
//  DataService.swift
//  coder-swag
//
//  Created by Shawn Baugh on 4/21/19.
//  Copyright © 2019 Shawn Baugh. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png"),
    ]
    
    private let hats = [Product(title: "Devslops Logo Graphic Beanie", price: "$20", imageName: "hat01.png"), Product(title: "Devslops Logo Hat Black", price: "$20", imageName: "hat02.png"), Product(title: "Devslops Logo Hat White", price: "$20", imageName: "hat03.png"), Product(title: "Devslops Logo Snapback", price: "$20", imageName: "hat04.png")]
    
    private let hoodies = [Product(title: "Devslops Logo Hoodie Grey", price: "$50", imageName: "hoodie01.png"), Product(title: "Devslops Logo Hoodie Red", price: "$50", imageName: "hoodie02.png"), Product(title: "Devslops Hoodie Grey", price: "$50", imageName: "hoodie03.png"), Product(title: "Devslops Hoodie Red", price: "$10", imageName: "hoodie04.png")]
    
    private let shirts = [Product(title: "Devslops Logo Shirt Black", price: "$25", imageName: "shirt01.png"), Product(title: "Devslops Badge Shirt Grey", price: "$25", imageName: "hat02.png"), Product(title: "Devslops Logo Shirt Red", price: "$25", imageName: "hat03.png"), Product(title: "Hustle Delegate Grey", price: "$10", imageName: "hat04.png"), Product(title: "Kickflip Studios Black", price: "$10", imageName: "hat04.png")]
    
    private let digital = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    func getHoodies() -> [Product] {
        return hoodies
    }
    func getShirts() -> [Product] {
        return shirts
    }
    func getDigitalGoods() -> [Product] {
        return digital
    }
}
