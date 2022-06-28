//
//  Datas.swift
//  Tableviews
//
//  Created by Decagon on 28/06/2022.
//

import Foundation
import UIKit

// MARK: - Model struct for the cells of the collectionview
struct Clothing {
    let image: UIImage
    let text: String
}

class ClothingArray {
    static  func getClothing() -> [Clothing] {
        
        let cloths = [
            Clothing(image: #imageLiteral(resourceName: "hailey"), text: "!"),
            Clothing(image: #imageLiteral(resourceName: "ford"), text: "@"),
            Clothing(image: #imageLiteral(resourceName: "sergey"), text: "#"),
            Clothing(image: #imageLiteral(resourceName: "julia"), text: "$"),
            Clothing(image: #imageLiteral(resourceName: "sincerely"), text: "%"),
            Clothing(image: #imageLiteral(resourceName: "heather"), text: "^"),
            Clothing(image: #imageLiteral(resourceName: "modifier"), text: "&"),
            Clothing(image: #imageLiteral(resourceName: "milada"), text: "*"),
            Clothing(image: #imageLiteral(resourceName: "zoe"), text: "("),
            Clothing(image: #imageLiteral(resourceName: "caio"), text: ")"),
            Clothing(image: #imageLiteral(resourceName: "hayley"), text: "-"),
            Clothing(image: #imageLiteral(resourceName: "junko"), text: "="),
            Clothing(image: #imageLiteral(resourceName: "angela"), text: "+"),
            Clothing(image: #imageLiteral(resourceName: "unsplash"), text: "?"),
            Clothing(image: #imageLiteral(resourceName: "malvestida"), text: "]"),
            Clothing(image: #imageLiteral(resourceName: "media"), text: "["),
            Clothing(image: #imageLiteral(resourceName: "cristofer"), text: "{"),
            Clothing(image: #imageLiteral(resourceName: "jaclyn"), text: "}")
        ]
        
        return cloths
        
    }
}

var cloths = ClothingArray.getClothing()
