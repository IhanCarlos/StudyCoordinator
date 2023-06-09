//
//  SecondCoordinator.swift
//  LearningCoordinator
//
//  Created by ihan carlos on 08/06/23.
//

import Foundation
import UIKit

protocol SecondCoordinatorDelegate {
    func goToThird()
    func backPage()
}

class SecondCoordinator: Coordinator  {
    
    var parentCoordinator: Coordinator?
    var children: [Coordinator] = []
    var navigationController: UINavigationController
    var delegate: SecondCoordinatorDelegate?
    
    init(navCon : UINavigationController, delegate: SecondCoordinatorDelegate) {
        self.navigationController = navCon
        self.delegate = delegate
    }
    
    func start() {
        secondCoordinator()
    }
    
    func secondCoordinator() {
        let viewModel = SecondViewModel(delegate: self)
        let vc: SecondViewController = SecondViewController(viewModel: viewModel)
        navigationController.pushViewController(vc, animated: true)
    }
    
    func backPage() {
        navigationController.popViewController(animated: true)
    }
}

extension SecondCoordinator: SecondViewModelCoordinatorDelegate {
    func goToThird() {
        delegate?.goToThird()
    }
    
    func goToFirst() {
        delegate?.backPage()
    }
    
    
}
