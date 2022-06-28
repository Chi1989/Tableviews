//
//  HomePageViewController.swift
//  Tableviews
//
//  Created by Decagon on 25/06/2022.
//

import UIKit

// MARK: Properties
class HomePageViewController: UIViewController {
    
    var shoesArrays: [ShoesCarts] = [ShoesCarts]()
    
    let items = ["Paid", "Free", "Top Grossing"]
    
    lazy var categoriesLabel: UILabel = {
        let label = UILabel()
        label.text = "FERMINITY"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = #colorLiteral(red: 0.4683449268, green: 0.2072214186, blue: 0.1971801519, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        return label
    }()
    
    lazy var listButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "list.bullet"), for: .normal)
        button.tintColor = #colorLiteral(red: 0.4683449268, green: 0.2072214186, blue: 0.1971801519, alpha: 1)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var segmentControl: UISegmentedControl = {
        var segment = UISegmentedControl(items: items)
        segment.selectedSegmentIndex = 0
        segment.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.6835213304, green: 0.4074342251, blue: 0.3989093304, alpha: 1)], for: UIControl.State.selected)
        segment.translatesAutoresizingMaskIntoConstraints = false
        return segment
    }()
    
    lazy var tableview: UITableView = {
        let table = UITableView()
        table.backgroundColor = .clear
        table.dataSource = self
        table.delegate = self
        table.translatesAutoresizingMaskIntoConstraints = false
        table.register(HomeTableViewCell.self, forCellReuseIdentifier: "Cell")
        table.separatorColor = .clear
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.9697003961, green: 0.9253903031, blue: 0.8205071092, alpha: 1)
        setUpViews()
    }
    // MARK: Setting of the subviews to the parent view and constraints
    func setUpViews() {
        let subViews = [tableview, categoriesLabel, listButton, segmentControl]
        for sebView in subViews{
            view.addSubview(sebView)
        }
        
        NSLayoutConstraint.activate([
            categoriesLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            categoriesLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            listButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            listButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            segmentControl.topAnchor.constraint(equalTo: categoriesLabel.bottomAnchor, constant: 20),
            segmentControl.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            tableview.topAnchor.constraint(equalTo: segmentControl.bottomAnchor, constant: 20),
            tableview.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableview.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableview.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
        ])
    }
}
