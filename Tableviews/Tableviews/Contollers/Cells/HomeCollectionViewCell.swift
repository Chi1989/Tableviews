//
//  HomeCollectionViewCell.swift
//  Tableviews
//
//  Created by Decagon on 28/06/2022.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
    let identifier = "CollectionViewCell"
    
    lazy var clothImageView:UIImageView = {
    let img = UIImageView()
    img.contentMode = .scaleAspectFill // image will never be strecthed vertially or horizontally
    img.translatesAutoresizingMaskIntoConstraints = false // enable autolayout
    img.layer.cornerRadius = 5
    
    return img
    }()
    
    lazy var textLabel:UILabel = {
    let label = UILabel(frame: CGRect(x: 116, y: 10, width: self.frame.width - 116, height: 30))
        label.font = UIFont.systemFont(ofSize: 20)
    label.textAlignment = .left
    label.textColor =  #colorLiteral(red: 0.4683449268, green: 0.2072214186, blue: 0.1971801519, alpha: 1)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
        self.layer.shadowOffset = CGSize(width: 0, height: 1)
        self.layer.shadowOpacity = 0.1
        self.layer.masksToBounds = false
    }
    
    
    func setUpView() {
        [clothImageView, textLabel].forEach { contentView.addSubview($0)}
        NSLayoutConstraint.activate([
            clothImageView.heightAnchor.constraint(equalToConstant: 120),
            clothImageView.widthAnchor.constraint(equalToConstant: 120),
            clothImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 30),
            clothImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            clothImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
            
            textLabel.topAnchor.constraint(equalTo: clothImageView.bottomAnchor, constant: 10),
            
        ])
    
}
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
