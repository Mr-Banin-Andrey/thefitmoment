
import Foundation
import UIKit

class TimetableViewController: UIViewController {

    private let viewModel: TimetableViewModelProtocol
    
    private lazy var timetableView = TimetableView(delegate: self)
    
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
        
        view.backgroundColor = .red
        
        timetableView.configureCollectionView(dataSource: self, delegate: self)
    }
}


extension TimetableViewController: TimetableViewDelegate { }


extension TimetableViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        let width = collectionView.frame.width
        let height: CGFloat = 100
        return CGSize(width: width, height: height)
    }
}

extension TimetableViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        7
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "UICollectionViewListCell", for: indexPath)
        
        return cell
    }
    
    
}
