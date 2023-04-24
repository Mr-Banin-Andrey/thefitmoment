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
    
    private lazy var collectionViewCalendar: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    init(delegate: TimetableViewDelegate) {
        self.delegate = delegate
        super.init(frame: .zero)
        
        self.setupUI()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureCollectionViewCalendar(dataSource: UICollectionViewDataSource,
                                 delegate: UICollectionViewDelegateFlowLayout) {
        collectionViewCalendar.delegate = delegate
        collectionViewCalendar.dataSource = dataSource
        collectionViewCalendar.register(CalendarCollectionViewCell.self, forCellWithReuseIdentifier: "customWeekId")
        collectionViewCalendar.register(UICollectionViewCell.self,
                                forCellWithReuseIdentifier: "defaultId")
        
    }
    
    private func setupUI() {
        self.addSubview(self.collectionViewCalendar)
        
        NSLayoutConstraint.activate([
            collectionViewCalendar.topAnchor.constraint(equalTo: self.topAnchor, constant: 100),
            collectionViewCalendar.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            collectionViewCalendar.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            collectionViewCalendar.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
}
