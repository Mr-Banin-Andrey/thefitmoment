
import Foundation
import UIKit

class TimetableViewController: UIViewController {

    private let viewModel: TimetableViewModelProtocol
    
    private lazy var timetableView = TimetableView(delegate: self)
    
    private enum Constants {
        static let numberOfItemsInLine: CGFloat = 7
    }
    
    init(viewModel: TimetableViewModelProtocol) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        super.loadView()
        
        view = timetableView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .cyan
        
        timetableView.configureCollectionViewCalendar(dataSource: self, delegate: self)
    }
}


extension TimetableViewController: TimetableViewDelegate { }


extension TimetableViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let insert = (collectionView.collectionViewLayout as? UICollectionViewFlowLayout)?.sectionInset ?? .zero
        let interItemSpacing = (collectionView.collectionViewLayout as? UICollectionViewFlowLayout)?.minimumInteritemSpacing ?? 0
        
        let wight = collectionView.frame.width - (Constants.numberOfItemsInLine - 1) * interItemSpacing - insert.left - insert.right
        
        let itemWight = floor(wight / Constants.numberOfItemsInLine)

        
        return CGSize(width: itemWight, height: 72)
    }
}

extension TimetableViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let count = DaysOfTheWeek().days.count
        return count * 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "customWeekId", for: indexPath) as? CalendarCollectionViewCell else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "defaultId", for: indexPath)
            return cell
        }
        let date = Date()
        let dateFormatter = DateFormatter()
        
        dateFormatter.setLocalizedDateFormatFromTemplate("d")
        let today = dateFormatter.string(from: date)
   
//        cell.setupValue(day: DaysOfTheWeek().days[1], date: today)

        return cell
    }
    
    
}
