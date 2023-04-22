//
//  ProfileView.swift
//  thefitmoment
//
//  Created by Андрей Банин on 10.4.23..
//

import Foundation
import UIKit

protocol ProfileViewDelegate: AnyObject {}

class ProfileView: UIView {
    
    private weak var delegate: ProfileViewDelegate?
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//
//        setupUI()
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    init(delegate: ProfileViewDelegate) {
        self.delegate = delegate
        super.init(frame: .zero)
        setupUI()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    func configureTableView(dataSource: UITableViewDataSource,
                            delegate: UITableViewDelegate) {
        tableView.dataSource = dataSource
        tableView.delegate = delegate
        tableView.dequeueReusableCell(withIdentifier: "default")
//        tableView.register(<#T##aClass: AnyClass?##AnyClass?#>, forHeaderFooterViewReuseIdentifier: <#T##String#>)
        
    }
    
    func setupUI() {
        self.addSubview(self.tableView)
        
        NSLayoutConstraint.activate([
            self.tableView.topAnchor.constraint(equalTo: self.topAnchor),
            self.tableView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.tableView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
        
    }
    
    
}
