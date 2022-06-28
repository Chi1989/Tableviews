//
//  Extensions+Viewcontroller.swift
//  Tableviews
//
//  Created by Decagon on 26/06/2022.
//

import UIKit

extension HomePageViewController {
     func tabBars() {
        let tabBarVc = UITabBarController()
        
        let vc1 = UINavigationController(rootViewController: HomePageViewController())
        let vc2 = UINavigationController(rootViewController: SecondHomeViewController())
        let vc3 = UINavigationController(rootViewController: ThirdViewController())
        let vc4 = UINavigationController(rootViewController: FourthViewController())
        let vc5 = UINavigationController(rootViewController: FiveViewController())
        
        vc1.title = "Footwears"
        vc2.title = "Clothing"
        vc3.title = "Accessories"
        vc4.title = "Search"
        vc5.title = "Makeover"
        
        tabBarVc.setViewControllers([vc1, vc2, vc3, vc4, vc5], animated: false)
    }
}

class FirstViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        title = "Footwears"
    }
}

class SecondHomeViewController: UIViewController {
    
    var clothsArray: [Clothing] = [Clothing]()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Your Favorite Clothing"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = #colorLiteral(red: 0.4683449268, green: 0.2072214186, blue: 0.1971801519, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        
        return label
    }()
    
    lazy var collectionView: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: 60, height: 60)
        let collection = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.delegate = self
        collection.dataSource = self
        collection.frame = view.bounds
        collection.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "CollectionViewCell")
        view.addSubview(collection)
        
        return collection
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBrown
        title = "Clothing"
        setUpViews()
    }
    
    func setUpViews() {
        view.addSubview(titleLabel)
        view.addSubview(collectionView)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 20),
            
            collectionView.topAnchor.constraint(equalTo: titleLabel.topAnchor, constant: 30),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            
        ])
    }
    
}

class ThirdViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        title = "Accessories"
    }
}

class FourthViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemOrange
        title = "Search"
    }
}

class FiveViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPurple
        title = "Makeovers"
    }
}
