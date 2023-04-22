//
//  ProfileViewController.swift
//  thefitmoment
//
//  Created by Андрей Банин on 30.3.23..
//

import Foundation
import UIKit

class ProfileViewController: UIViewController {
    
    private let viewModel: ProfileViewModelProtocol

    private lazy var profileView = ProfileView(delegate: self)
    
    init(viewModel: ProfileViewModelProtocol) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        super.loadView()
        
        view = profileView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .cyan
        
        profileView.configureTableView(dataSource: self, delegate: self)
    }
    
}

extension ProfileViewController: UITableViewDelegate {
    
}

extension ProfileViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "default", for: indexPath) 
        return cell
    }
    
    
}

extension ProfileViewController: ProfileViewDelegate { }
