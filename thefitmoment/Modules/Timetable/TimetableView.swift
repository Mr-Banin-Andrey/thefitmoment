//
//  TimetableView.swift
//  thefitmoment
//
//  Created by Андрей Банин on 10.4.23..
//

import Foundation
import UIKit

protocol TimetableViewDelegate: AnyObject {}

class TimetableView: UIView {
    
    private weak var delegate: TimetableViewDelegate?
    
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    init(delegate: TimetableViewDelegate) {
        self.delegate = delegate
        super.init(frame: .zero)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureCollectionView(dataSource: UICollectionViewDataSource,
                                 delegate: UICollectionViewDelegateFlowLayout) {
        collectionView.delegate = delegate
        collectionView.dataSource = dataSource
        collectionView.register(UICollectionViewListCell.self,
                                forCellWithReuseIdentifier: "UICollectionViewListCell")
        
    }
    
    private func setupUI() {
        self.addSubview(self.collectionView)
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: self.topAnchor, constant: 100),
            collectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            collectionView.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
//    @objc private func
}
