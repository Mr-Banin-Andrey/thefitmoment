//
//  ProfileViewModel.swift
//  thefitmoment
//
//  Created by Андрей Банин on 10.4.23..
//

import Foundation

protocol ProfileViewModelProtocol: ViewModelProtocol {
    var onStateDidChange: ((ProfileViewModel.State) -> Void)? { get set }
    func updateState(viewInput: ProfileViewModel.ViewInput)
}

class ProfileViewModel: ProfileViewModelProtocol {
    
    enum State {
        case initial
        case loaded
    }
    
    enum ViewInput {
        case showNumbersOfWorkouts
        case showPrice
        case showFeedback
    }
    
    weak var coordinator: ProfileCoordinator?
    var onStateDidChange: ((State) -> Void)?
    
    private (set) var state: State = .initial {
        didSet {
            onStateDidChange?(state)
        }
    }
    
    func updateState(viewInput: ViewInput) {
        switch viewInput {
        case .showNumbersOfWorkouts:
            coordinator?.showNumbersOfWorkouts()
        case .showPrice:
            coordinator?.showPrice()
        case .showFeedback:
            coordinator?.showFeedback()
        }
    }
    
    
}
