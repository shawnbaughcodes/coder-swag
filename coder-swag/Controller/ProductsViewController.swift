//
//  ProductsViewController.swift
//  coder-swag
//
//  Created by Shawn Baugh on 4/21/19.
//  Copyright © 2019 Shawn Baugh. All rights reserved.
//

import UIKit

class ProductsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource  {
    private(set) public var products = [Product]()
    @IBOutlet weak var productsCollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productsCollection.dataSource = self
        productsCollection.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func initializeProducts(category: Category) {
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
        let product = products[indexPath.row]
        cell.updateViews(product: product)
            return cell
        }
        return ProductCell()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
