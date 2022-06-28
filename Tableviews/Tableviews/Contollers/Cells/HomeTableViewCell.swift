//
//  HomeTableViewCell.swift
//  Tableviews
//
//  Created by Decagon on 25/06/2022.
//

import UIKit

// MARK: - Properties of the tableview cells
class HomeTableViewCell: UITableViewCell {
    
    let identifier = "Cell"
    
    lazy var shoeImageView:UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFill
        img.translatesAutoresizingMaskIntoConstraints = false
        img.layer.cornerRadius = 10
        img.heightAnchor.constraint(equalToConstant: 80).isActive = true
        img.widthAnchor.constraint(equalToConstant: 120).isActive = true
        img.clipsToBounds = true
        
        return img
    }()
    
    lazy var titleLabel:UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20)
        label.textAlignment = .left
        label.textColor =  #colorLiteral(red: 0.4683449268, green: 0.2072214186, blue: 0.1971801519, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var priceLabel:UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textColor = #colorLiteral(red: 0.4683449268, green: 0.2072214186, blue: 0.1971801519, alpha: 1)
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var containerView:UIView = {
        let view = UIView()
        let items = [titleLabel, priceLabel, containerImageView]
        for item in items {
            view.addSubview(item)
        }
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = #colorLiteral(red: 0.9697003961, green: 0.9253903031, blue: 0.8205071092, alpha: 1)
        view.layer.cornerRadius = 5
        return view
    }()
    
    lazy var containerImageView:UIView = {
        let view = UIView()
        view.addSubview(shoeImageView)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = #colorLiteral(red: 0.9697003961, green: 0.9253903031, blue: 0.8205071092, alpha: 1)
        view.layer.cornerRadius = 5
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = #colorLiteral(red: 0.4683449268, green: 0.2072214186, blue: 0.1971801519, alpha: 1)
        setUpView()
    }
    
    // MARK: - Placing the properties(cells) to the parent view and constraints
    func setUpView() {
        [containerView].forEach { contentView.addSubview($0)}
        
        NSLayoutConstraint.activate([
            
            containerView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            containerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            containerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            
            containerImageView.topAnchor.constraint(equalTo: containerView.topAnchor),
            containerImageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            
            shoeImageView.leadingAnchor.constraint(equalTo: containerImageView.leadingAnchor, constant: 5),
            shoeImageView.topAnchor.constraint(equalTo: containerImageView.topAnchor, constant: 5),
            shoeImageView.trailingAnchor.constraint(equalTo: containerImageView.trailingAnchor),
            shoeImageView.bottomAnchor.constraint(equalTo: containerImageView.bottomAnchor),
            
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            titleLabel.leadingAnchor.constraint(equalTo: containerImageView.trailingAnchor, constant: 10),
            
            priceLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor),
            priceLabel.leadingAnchor.constraint(equalTo: containerImageView.trailingAnchor, constant: 10),
        ])
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
