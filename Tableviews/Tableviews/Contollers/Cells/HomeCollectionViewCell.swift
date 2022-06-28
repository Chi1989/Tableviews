//
//  HomeCollectionViewCell.swift
//  Tableviews
//
//  Created by Decagon on 28/06/2022.
//

import UIKit

// MARK: - Properties of the collectionview cells
class HomeCollectionViewCell: UICollectionViewCell {
    let identifier = "CollectionViewCell"
    
    lazy var clothImageView:UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFill // image will never be strecthed vertially or horizontally
        img.translatesAutoresizingMaskIntoConstraints = false // enable autolayout
        img.layer.cornerRadius = 5
        img.clipsToBounds = true
        return img
    }()
    
    lazy var textLabel:UILabel = {
        let label = UILabel(frame: CGRect(x: 116, y: 10, width: self.frame.width - 116, height: 30))
        label.font = UIFont.systemFont(ofSize: 20)
        label.textAlignment = .left
        label.textColor =  #colorLiteral(red: 0.4683449268, green: 0.2072214186, blue: 0.1971801519, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.clipsToBounds = true
        return label
    }()
    
    lazy var subView:UIView = {
        let view = UIView()
        view.addSubview(clothImageView)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = #colorLiteral(red: 0.9697003961, green: 0.9253903031, blue: 0.8205071092, alpha: 1)
        view.layer.cornerRadius = 5
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
        
    }
    
    // MARK: - Placing the properties(cells) to the parent view and constraints
    func setUpView() {
        [subView, textLabel].forEach { contentView.addSubview($0)}
        NSLayoutConstraint.activate([
            subView.topAnchor.constraint(equalTo: contentView.topAnchor),
            subView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            subView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            subView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            
            clothImageView.topAnchor.constraint(equalTo: subView.topAnchor),
            clothImageView.leadingAnchor.constraint(equalTo: subView.leadingAnchor),
            clothImageView.trailingAnchor.constraint(equalTo: subView.trailingAnchor),
            clothImageView.bottomAnchor.constraint(equalTo: subView.bottomAnchor),
            
            textLabel.topAnchor.constraint(equalTo: clothImageView.bottomAnchor),
        ])
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
