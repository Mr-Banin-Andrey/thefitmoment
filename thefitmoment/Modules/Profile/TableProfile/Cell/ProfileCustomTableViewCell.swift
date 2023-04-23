//
//  ProfileCustomTableViewCell.swift
//  thefitmoment
//
//  Created by Андрей Банин on 23.4.23..
//

import Foundation
import UIKit
import SnapKit

class ProfileCustomTableViewCell: UITableViewCell {
    
    private lazy var name: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var pictureName: UIImageView = {
        let image = UIImageView()
        image.tintColor = UIColor(named: "colorFit")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private lazy var arrowImage: UIImageView = {
        let image = UIImageView()
        image.tintColor = UIColor(named: "colorFit")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(with value: ProfileCustomTableViewValue) {
        self.name.text = value.name
        self.pictureName.image = UIImage(systemName: value.picture)
        self.arrowImage.image = UIImage(systemName: value.arrow)
    }
    
    private func setupUI() {
        self.addSubview(self.name)
        self.addSubview(self.pictureName)
        self.addSubview(self.arrowImage)
        
        self.pictureName.snp.makeConstraints { maker in
            maker.width.equalTo(25)
            maker.height.equalTo(25)
            maker.centerY.equalToSuperview().inset(16)
            maker.left.equalToSuperview().inset(16)
        }
        
        self.name.snp.makeConstraints { maker in
            maker.centerY.equalToSuperview()
            maker.left.equalTo(self.pictureName.snp.right).offset(8)
        }
        
        self.arrowImage.snp.makeConstraints { maker in
            maker.centerY.equalToSuperview()
            maker.right.equalToSuperview().inset(16)
        }
    }
}
