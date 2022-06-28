//
//  Extensions.swift
//  Tableviews
//
//  Created by Decagon on 25/06/2022.
//

import UIKit

extension HomePageViewController: UITableViewDataSource, UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shoes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! HomeTableViewCell
        cell.titleLabel.text = shoes[indexPath.row].title
        cell.shoeImageView.image = shoes[indexPath.row].image
        cell.priceLabel.text =  String(shoes[indexPath.row].prices)
        //cell.separatorInset = UIEdgeInsets(top: 20, left: 0, bottom: 20, right: 0)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}
