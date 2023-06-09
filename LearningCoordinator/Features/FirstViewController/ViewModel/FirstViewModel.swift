//
//  FirstViewModel.swift
//  LearningCoordinator
//
//  Created by ihan carlos on 07/06/23.
//

import Foundation

protocol FirstViewModelCoordinatorDelegate {
    func goToSecond()
}

class FirstViewModel:FirstViewModelCoordinatorDelegate {
    
    private var delegate : FirstViewModelCoordinatorDelegate?
    
    init(delegate: FirstViewModelCoordinatorDelegate) {
        self.delegate = delegate
    }
    
    func goToSecond() {
        delegate?.goToSecond()
    }
}
