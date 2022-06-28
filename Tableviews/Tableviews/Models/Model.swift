//
//  Model.swift
//  Tableviews
//
//  Created by Decagon on 26/06/2022.
//

import Foundation
import UIKit

// MARK: - Model Struct for the cells of the tableview
struct ShoesCarts {
    var image: UIImage
    var title: String
    var prices: String
}

class ShoesArray {
    static  func getShowesCarts() -> [ShoesCarts] {
        let shoes = [
            ShoesCarts(image: #imageLiteral(resourceName: "beauty"), title: "Classy heels", prices: "$50"),
            ShoesCarts(image: #imageLiteral(resourceName: "boot"), title: "For casuals", prices: "$45"),
            ShoesCarts(image: #imageLiteral(resourceName: "davon"), title: "Bridal", prices: "$50"),
            ShoesCarts(image: #imageLiteral(resourceName: "emily"), title: "Keep it simple", prices: "$45"),
            ShoesCarts(image: #imageLiteral(resourceName: "haley"), title: "Unisex", prices: "$30"),
            ShoesCarts(image: #imageLiteral(resourceName: "jeff"), title: "Classy snickers", prices: "$45"),
            ShoesCarts(image: #imageLiteral(resourceName: "karim"), title: "Girleo", prices: "$35"),
            ShoesCarts(image: #imageLiteral(resourceName: "maksim"), title: "Multicolors", prices: "$40"),
            ShoesCarts(image: #imageLiteral(resourceName: "mostafa"), title: "Elites", prices: "$60"),
            ShoesCarts(image: #imageLiteral(resourceName: "jeff"), title: "Chick snickers", prices: "$50"),
            ShoesCarts(image: #imageLiteral(resourceName: "mohammad"), title: "Fafafa", prices: "$55")
        ]
        
        
        return shoes
    }
    
}

var shoes = ShoesArray.getShowesCarts()
