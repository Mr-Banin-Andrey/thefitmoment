//
//  TimetableViewModel.swift
//  thefitmoment
//
//  Created by Андрей Банин on 10.4.23..
//

import Foundation

protocol TimetableViewModelProtocol: ViewModelProtocol {
    var onStateDidChange: ((TimetableViewModel.State) -> Void)? { get set }
    func updateState(viewInput: TimetableViewModel.ViewInput)
}

class TimetableViewModel: TimetableViewModelProtocol {
    
    enum State {
        case initial
//        case loaded
    }
    
    enum ViewInput {
        case initial
        case check
    }
    
    weak var coordinator: TimetableCoordinator?
    var onStateDidChange: ((State) -> Void)?
    
    private (set) var state: State = .initial {
        didSet {
            onStateDidChange?(state)
        }
    }
    
    func updateState(viewInput: ViewInput) {
        switch viewInput {
        case .initial:
            ()
        case .check:
            ()
        }
    }
        
    
    
    
}
