//
//  HomeScreenTabBarViewController.swift
//  Tableviews
//
//  Created by Decagon on 26/06/2022.
//

import UIKit

class HomeScreenTabBarViewController: UITabBarController {
    
    let vc1 = UINavigationController(rootViewController: HomePageViewController())
    let vc2 = UINavigationController(rootViewController: SecondHomeViewController())
    let vc3 = UINavigationController(rootViewController: ThirdViewController())
    let vc4 = UINavigationController(rootViewController: FourthViewController())
    let vc5 = UINavigationController(rootViewController: FiveViewController())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
        view.backgroundColor = #colorLiteral(red: 0.9697003961, green: 0.9253903031, blue: 0.8205071092, alpha: 1)
        
    }
    
    func setUpViews() {
        
        let icons = ["star", "list.bullet.rectangle", "lightbulb.circle", "magnifyingglass", "square.and.arrow.down"]
        
        vc1.title = "Footwears"
        vc2.title = "Clothing"
        vc3.title = "Accessories"
        vc4.title = "Search"
        vc5.title = "Makeovers"
        
        tabBar.tintColor = #colorLiteral(red: 0.4683449268, green: 0.2072214186, blue: 0.1971801519, alpha: 1)
        tabBar.backgroundColor = #colorLiteral(red: 0.4683449268, green: 0.2072214186, blue: 0.1971801519, alpha: 1)
        setViewControllers([vc1, vc2, vc3, vc4, vc5], animated: false)
        
        for num in 0 ..< icons.count {
            tabBar.items![num].image = UIImage(systemName: icons[num])
        }
    }
}
