//
//  ThirdCoordinator.swift
//  LearningCoordinator
//
//  Created by ihan carlos on 08/06/23.
//

import Foundation
import UIKit

protocol ThirdCoordinatorDelegate {
    func backPage()
}

class ThirdCoordinator: Coordinator {
    
    var parentCoordinator: Coordinator?
    var children: [Coordinator] = []
    var navigationController: UINavigationController
    var delegate: ThirdCoordinatorDelegate?
    
    init(navCon : UINavigationController, delegate: ThirdCoordinatorDelegate) {
        self.navigationController = navCon
        self.delegate = delegate
    }
    
    func start() {
        secondCoordinator()
    }
    
    func secondCoordinator() {
        let viewModel = ThirdViewModel(delegate: self)
        let vc: ThirdViewController = ThirdViewController(viewModel: viewModel)
        navigationController.pushViewController(vc, animated: true)
    }
    
    func backPage() {
        navigationController.popViewController(animated: true)
    }
}

extension ThirdCoordinator: ThirdViewModelCoordinatorDelegate {
    func goToSecond() {
        delegate?.backPage()
    }
}
