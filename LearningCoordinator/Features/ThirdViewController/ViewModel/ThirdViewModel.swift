//
//  ThirdViewModel.swift
//  LearningCoordinator
//
//  Created by ihan carlos on 07/06/23.
//

import Foundation

protocol ThirdViewModelCoordinatorDelegate {
    func backPage()
}

class ThirdViewModel: ThirdViewModelCoordinatorDelegate {
    
    private var delegate : ThirdViewModelCoordinatorDelegate?

    
    init(delegate: ThirdViewModelCoordinatorDelegate) {
        self.delegate = delegate
    }
    
    func backPage() {
        delegate?.backPage()
    }
    
}
