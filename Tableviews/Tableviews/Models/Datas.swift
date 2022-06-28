//
//  Datas.swift
//  Tableviews
//
//  Created by Decagon on 28/06/2022.
//

import Foundation
import UIKit

struct Clothing {
    let image: UIImage
    let text: String
}

class ClothingArray {
  static  func getClothing() -> [Clothing] {

      let cloths = [
        Clothing(image: #imageLiteral(resourceName: "boot"), text: "Oge"),
        Clothing(image: #imageLiteral(resourceName: "karim"), text: "Nonye"),
        Clothing(image: #imageLiteral(resourceName: "ryan"), text: "Belle"),
        Clothing(image: #imageLiteral(resourceName: "maksim"), text: "Nken"),
        Clothing(image: #imageLiteral(resourceName: "mostafa"), text: "Chii"),
        Clothing(image: #imageLiteral(resourceName: "beauty"), text: "Muna"),
        Clothing(image: #imageLiteral(resourceName: "emily"), text: "Iheom"),
        Clothing(image: #imageLiteral(resourceName: "jeff"), text: "Mma"),
        Clothing(image: #imageLiteral(resourceName: "haley"), text: "Chere"),
        Clothing(image: #imageLiteral(resourceName: "davon"), text: "Banad")
      ]

      return cloths

    }
}

var cloths = ClothingArray.getClothing()
