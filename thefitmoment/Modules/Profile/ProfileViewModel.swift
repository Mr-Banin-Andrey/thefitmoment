//
//  ProfileViewModel.swift
//  thefitmoment
//
//  Created by Андрей Банин on 10.4.23..
//

import Foundation

protocol ProfileViewModelProtocol {
    var onStateDidChange: ((ProfileViewModel.State) -> Void)? { get set }
    func updateState(viewInput: ProfileViewModel.ViewInput)
}

class ProfileViewModel: ProfileViewModelProtocol {
    
    enum State {
        case initial
        case loaded
    }
    
    enum ViewInput {
        case setting
    }
    
    weak var coordinator: ProfileCoordinator?
    var onStateDidChange: ((State) -> Void)?
    
    func updateState(viewInput: ViewInput) {
        <#code#>
    }
    
    
    
    
}
