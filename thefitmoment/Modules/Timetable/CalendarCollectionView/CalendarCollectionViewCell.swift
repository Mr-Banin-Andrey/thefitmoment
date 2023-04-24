//
//  CalendarCollectionViewCell.swift
//  thefitmoment
//
//  Created by Андрей Банин on 24.4.23..
//

import UIKit
import SnapKit


class CalendarCollectionViewCell: UICollectionViewCell {
    
    private lazy var nameDay: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(named: "colorFit")
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.text = "Fr"
        return label
    }()
    
    private lazy var dayOfTheWeek: UIButton = {
        let button = UIButton()
        button.tintColor = UIColor(named: "colorFit")
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 17
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(dayButton), for: .touchUpInside)
        button.setTitle("23", for: .normal)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupValue(day: DayOfTheWeek, date: String, index: Int) {
        
        dayOfTheWeek.tag = index
        
        self.nameDay.text = day.day
        self.dayOfTheWeek.setTitle(date, for: .normal)
    }
    
    private func setupUI() {
        self.contentView.addSubview(self.nameDay)
        self.contentView.addSubview(self.dayOfTheWeek)

        self.nameDay.snp.makeConstraints { maker in
            maker.centerX.equalTo(self.contentView)
            maker.top.equalTo(self.contentView.snp.top).inset(8)
            maker.width.equalTo(20)
        }
        
        self.dayOfTheWeek.snp.makeConstraints { maker in
            maker.centerX.equalTo(self.contentView)
            maker.top.equalTo(self.nameDay.snp.bottom).offset(8)
            maker.width.equalTo(34)
            maker.height.equalTo(34)
        }
    }
    
    @objc func dayButton() {
        
        let index = dayOfTheWeek.tag
        
        dayOfTheWeek.setTitleColor(.white, for: .normal)
        dayOfTheWeek.backgroundColor = UIColor(named: "colorFit")
    }
}
