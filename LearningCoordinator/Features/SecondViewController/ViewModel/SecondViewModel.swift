//
//  SecondViewModel.swift
//  LearningCoordinator
//
//  Created by ihan carlos on 07/06/23.
//

import Foundation

protocol SecondViewModelCoordinatorDelegate {
    func goToThird()
    func backPage()
}

class SecondViewModel: SecondViewModelCoordinatorDelegate {
    
    private var delegate : SecondViewModelCoordinatorDelegate?

    
    init(delegate: SecondViewModelCoordinatorDelegate) {
        self.delegate = delegate
    }
    
    func goToThird() {
        delegate?.goToThird()
    }
    
    func backPage(){
        delegate?.backPage()
    }
}
